class SearchAgencyNear < SitePrism::Section
  element :nearTab, "#OpcaoBuscaAgenProxima"
  element :cep, "#refCep"
  element :searchPostalCode, :css,'#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img'
  element :address, "#refEndereco"
end

class SearchAgencyNeighborhood < SitePrism::Section
end

class SearchAgencyNumber < SitePrism::Section
end

class SearchAgencyRoute < SitePrism::Section
end

class SearchAgency < SitePrism::Page
  section :near, SearchAgencyNear, "#BuscaAgenProximaForm"
  section :neighborhood, SearchAgencyNeighborhood
  section :number, SearchAgencyNumber
  section :route, SearchAgencyRoute
  element :iframe, "iframe"
end
