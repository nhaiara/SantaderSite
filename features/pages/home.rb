class Home
	include Capybara::DSL

	def url
		visit "http://www.santander.com.br"
	end

	def click_something(link)
		click_link(link)
	end

	def fill_cep
		last_window
		within_frame(find("iframe")) do 
			fill_in "refCep", :with => "04534011"
		end
	end

	def last_window
		page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)	
	end

	def click_search
		within_frame(find("iframe")) do
			find(:css,'#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img').click
		end
	end

	def select_address
		within_frame(find("iframe")) do
			find('#refEndereco').find(:xpath,'option[2]').select_option
		end
	end

	def verify_content
		page.has_content?('1744 - SELECT ITAIM BIBI-SP')
	end
end
