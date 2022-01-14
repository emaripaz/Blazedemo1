Feature: Compra de passagem Aerea
  #Descreve a compra pelo site Blazedemo.com
  Scenario: De Sao Paulo a Roma
    Given acesso o site Blazedemo
    When seleciono a cidade de origem como "São Paolo"
    And seleciono a cidade de destino como "Rome"
    And clico em Find Flights
    Then sou direcionado para a pagina de selecao de voos
    When seleciono o primeiro voo
    Then sou direcionado para a pagina de pagamento
    When preencho os dados do pagamento
    And clico no botao de comprar Purchase Flight
    Then sou direcionado para a pagina de confirmacao

  Scenario: De Sao Paulo a Roma Compacto
    Given acesso o site Blazedemo
    When seleciono a cidade de origem como "São Paolo" para "Rome"
    Then sou direcionado para a pagina de selecao de voos
    When seleciono o primeiro voo
    Then sou direcionado para a pagina de pagamento
    When preencho os dados do pagamento
    And clico no botao de comprar Purchase Flight
    Then sou direcionado para a pagina de confirmacao