#language: pt
#utf-8

Funcionalidade: Buscar Agências
	Eu como cliente do Santander
	Quero procurar uma agência dentro do Brasil
	Para saber suas informações de contato

	Cenario: Buscar agência por CEP válido
		Dado que eu estou na home do site Santander
		Quando eu clicar no menu inferior Agências
		E clicar no link "Clique aqui"
		E preencher o campo CEP
		E clicar no botão buscar
		E selecionar um endereço
		Então aparecerá as agências disponíveis

	Cenario: Buscar agência por bairro
		Dado que eu estou na home do site Santander
		Quando eu clicar no menu inferior Agências
		E clicar no link "Clique aqui"
		E clicar na aba Busque Agência no Bairro
		E selecionar os dados obrigatórios
		E clicar no botão buscar agência
		Então aparecerá as agências disponíveis na aba Busque Agência no Bairro

	Cenario: Buscar agência por número da agência