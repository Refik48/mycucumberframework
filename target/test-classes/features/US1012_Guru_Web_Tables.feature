Feature: US1012_Guru_Web_Tables
  Scenario: TC_16_kullanici_liste_alabilmeli

    When kullanici "Web_Table_url" anasayfaya gider
    Then Company listesini consola yazdirir
    And "DCB Bank"'in listede oldugunu test eder
    And kullanici sayfayi kapatir