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

Quando(/^clicar no botão para buscar agência pelo CEP$/) do
	Agency.new.click_search_postalcode
end

Quando(/^clicar no botão para buscar agência pelo bairro$/) do
	Agency.new.click_search_neighborhood
end

Quando(/^selecionar um endereço$/) do
 	Agency.new.select_address
end

Então(/^aparecerá as agências disponíveis do CEP$/) do
	Agency.new.verify_content_postalcode
end

Quando(/^clicar na aba para buscar agência no bairro$/) do
  	Agency.new.click_agency_neighborhood
end

Quando(/^selecionar os dados obrigatórios$/) do
  	Agency.new.select_data
end

Então(/^aparecerá as agências disponíveis do bairro$/) do
  	Agency.new.verify_content_neighborhood
end

Quando(/^clicar na aba para buscar agência pelo número$/) do
 	Agency.new.click_agency_number
end

Quando(/^preencher os dados obrigatórios$/) do
 	Agency.new.fill_agency_number
end

Quando(/^clicar no botão para buscar agência pelo número$/) do
 	Agency.new.click_search_agencyNumber
end

Então(/^aparecerá a agência solicitada$/) do
	Agency.new.verify_content_agencyNumber
end