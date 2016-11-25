require 'capybara/dsl'

After do |scenario|
Dir.mkdir('reports') unless Dir.exist?('reports')

  sufix = ('error' if scenario.failed?) || 'success'
  name = scenario.name.tr(' ', '_').downcase

  page.save_screenshot("reports/#{sufix}-#{name}.png")
  embed("reports/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')

  if page.driver.browser.window_handles.count > 1
    page.driver.browser.close
    last_handle = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(last_handle)
  end

  Capybara.reset_sessions!
end