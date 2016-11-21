#language: pt
#utf-8

Funcionalidade: Buscar Agências
	Eu como cliente do Santander
	Quero procurar uma agência dentro do Brasil
	Para saber suas informações de contato

	Cenario: Buscar agência por CEP válido
		Dado que eu estou na home do site Santander
		Quando eu clicar no menu inferior "Agência"
		E clicar no link "Clique aqui"
		E preencher o campo CEP
		E clicar no botão para buscar agência pelo CEP
		E selecionar um endereço
		Então aparecerá as agências disponíveis do CEP

	Cenario: Buscar agência por bairro
		Dado que eu estou na home do site Santander
		Quando eu clicar no menu inferior "Agência"
		E clicar no link "Clique aqui"
		E clicar na aba para buscar agência no bairro
		E selecionar os dados obrigatórios
		E clicar no botão para buscar agência pelo bairro
		Então aparecerá as agências disponíveis do bairro
		
	Cenario: Buscar agência por número da agência
		Dado que eu estou na home do site Santander
		Quando eu clicar no menu inferior "Agência"
		E clicar no link "Clique aqui"
		E clicar na aba para buscar agência pelo número
		E preencher os dados obrigatórios
		E clicar no botão para buscar agência pelo número
		Então aparecerá a agência solicitada
