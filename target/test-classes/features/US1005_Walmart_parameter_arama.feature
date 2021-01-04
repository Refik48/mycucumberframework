 #@smoke
Feature: US1004_Walmart_parameter_arama

  Scenario Outline: TC07_aranan_kelime_title’da_olmali

    Given kullanici walmart anasayfaya gider
    Then walmart sayfasinda "<arananlar>" icin arama yapar
    Then walmartta sayfa basliginin "<arananlar>" icerdigini test eder
    And kullanici sayfayi kapatir

    Examples:
      | arananlar |
      |Nutella    |
      |pencil     |
      |tomatoes   |
      |popcorn    |



    #buraya dikkat nerede ariyorsak basa yazalim...







