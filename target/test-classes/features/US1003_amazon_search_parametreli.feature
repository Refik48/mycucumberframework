Feature: US1003_amazon_search_parametreli

  #@wip
  Scenario: TC06_parametre_kullanma
    When kullanici amazon anasayfaya gider
    And "teapot" icin arama yapar
    Then sonucun "mehmet" icerdigini test eder
    And kullanici sayfayi kapatir