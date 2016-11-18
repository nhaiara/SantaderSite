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

Quando(/^preencher o CEP de origem$/) do
 	Agency.new.fill_cep_origin
  sleep 2
end

Quando(/^preencher o CEP de destino$/) do
  Agency.new.fill_cep_destiny
  sleep 2
end

Quando(/^clicar no botão para buscar agência pelo CEP$/) do
	Agency.new.click_search_postalcode
end

Quando(/^clicar no botão para buscar agência pelo bairro$/) do
	Agency.new.click_search_neighborhood
end

Quando(/^clicar no botão para buscar agência pela rota de origem$/) do
	Agency.new.click_search_agencyOrigin
end

Quando(/^clicar no botão para buscar agência pela rota de destino$/) do
	Agency.new.click_search_agencyDestiny
end

Quando(/^clicar no botão para buscar agências no caminho$/) do
	Agency.new.click_search_agencyRoute
end

Quando(/^selecionar um endereço$/) do
 	Agency.new.select_address
end

Quando(/^selecionar um endereço da rota de origem$/) do
  Agency.new.select_address_origin
end

Quando(/^selecionar um endereço da rota de destino$/) do
 	Agency.new.select_address_destiny
end

Então(/^aparecerá as agências disponíveis do CEP$/) do
	Agency.new.verify_content_postalcode
end

Então(/^aparecerá as agências disponíveis do bairro$/) do
  Agency.new.verify_content_neighborhood
end

Então(/^aparecerá a agência solicitada$/) do
	Agency.new.verify_content_agencyNumber
end

Então(/^aparecerá as agências disponíveis no caminho entre as rotas$/) do
  Agency.new.verify_content_agencyRoute
end

Quando(/^clicar na aba para buscar agência no bairro$/) do
  Agency.new.click_agency_neighborhood
end

Quando(/^selecionar os dados obrigatórios$/) do
  Agency.new.select_data
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

Quando(/^clicar na aba para buscar agência por minha rota$/) do
	Agency.new.click_agency_route
	sleep 2
end
