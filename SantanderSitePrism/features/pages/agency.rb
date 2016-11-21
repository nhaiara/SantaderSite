class Agency < SitePrism::Page

  def last_window
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end

  def click_something(link)
    click_link(link)
  end
end
