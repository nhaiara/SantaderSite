Quando(/^eu clicar no menu inferior Agências$/) do
 	Agency.new.click_something("Agência")
end

Quando(/^clicar no link "([^"]*)"$/) do |link|
 	Agency.new.click_something(link)
end

Quando(/^preencher o campo CEP$/) do
 	Agency.new.fill_cep
  	sleep 2
end

Quando(/^clicar no botão buscar$/) do
	Agency.new.click_search
end

Quando(/^clicar no botão buscar agência$/) do
	Agency.new.click_search_agency
end

Quando(/^selecionar um endereço$/) do
 	Agency.new.select_address
end

Então(/^aparecerá as agências disponíveis$/) do
	Agency.new.verify_content
end

Quando(/^clicar na aba Busque Agência no Bairro$/) do
  	Agency.new.click_agency
end

Quando(/^selecionar os dados obrigatórios$/) do
  	Agency.new.select_data
end

Então(/^aparecerá as agências disponíveis na aba Busque Agência no Bairro$/) do
  	Agency.new.verify_result
end