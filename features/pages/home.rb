class Home
	include Capybara::DSL

	def url
		visit "http://www.santander.com.br"
	end
end
