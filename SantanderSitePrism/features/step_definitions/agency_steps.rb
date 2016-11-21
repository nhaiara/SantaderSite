Quando(/^eu clicar no menu inferior "([^"]*)"$/) do |agency|
  @app.agency.click_something(agency)
end

Quando(/^clicar no link "([^"]*)"$/) do |link|
 	@app.agency.click_something(link)
end

Quando(/^preencher o campo CEP$/) do
  @app.agency.last_window
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.near.cep.set ADDRESS['NEAR']['CEP']
    sleep 1
  end
end

Quando(/^clicar no botão para buscar agência pelo CEP$/) do
  @app.agency.last_window
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.near.searchPostalCode.click
  end
end

Quando(/^selecionar um endereço$/) do
  within_frame(@app.searchAgency.iframe) do
    @app.searchAgency.near.address.select(ADDRESS['NEAR']['SELECT_ADDRESS'])
  end
end

Então(/^aparecerá as agências disponíveis do CEP$/) do
  page.has_content?(ADDRESS['NEAR']['VERIFY_AGENCY'])
end
