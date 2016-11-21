require 'capybara/dsl'

Before do
  Capybara.reset_sessions!
end
