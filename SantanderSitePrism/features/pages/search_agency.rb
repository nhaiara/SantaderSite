class SearchAgencyNear < SitePrism::Section
  element :nearTab, "#OpcaoBuscaAgenProxima"
  element :cep, "#refCep"
  element :search, :css,"#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img"
  element :address, "#refEndereco"
end

class SearchAgencyNeighborhood < SitePrism::Section
  element :neighborhoodTab, "#OpcaoBuscaAgenBairro"
  element :selectState, "#localizacaoEstado"
  element :selectCity, "#localizacaoCidade"
  element :selectNeighborhood, "#localizacaoBairro"
  element :search, :css,"#BuscaAgenBairro > table > tbody > tr > td > ul.botoes > li.alignR > a > img"
end

class SearchAgencyNumber < SitePrism::Section
  element :numberTab, "#OpcaoBuscaAgenNumero"
  element :agencyNumber, "#txNumeroAgencia"
  element :search, :css,"#BuscaAgenNumero > table > tbody > tr > td > ul > li.alignR > a > img"
end

class SearchAgencyRoute < SitePrism::Section
end

class SearchAgency < SitePrism::Page
  section :near, SearchAgencyNear, "#ctBuscaAgencia"
  section :neighborhood, SearchAgencyNeighborhood, '#ctBuscaAgencia'
  section :number, SearchAgencyNumber, '#ctBuscaAgencia'
  section :route, SearchAgencyRoute, '#ctBuscaAgencia'
  element :iframe, "iframe"
end
