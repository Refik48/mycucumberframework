@amazonaramauserstory
Feature: US1002_amazon_search_background

  Background:
    Given kullanici amazon anasayfaya gider

  @smoketest @amazonarama
  Scenario: TC02_amazon_iphone_arama_testi

    And iphone icin arama yapar
    Then sonucun iphone icerdigini test eder
    And kullanici sayfayi kapatir

  #@wip #work in progress(suan calistigim dosyalar)
  Scenario: TC03_amazon_teapot_arama_testi

    And teapot icin arama yapar
    Then sonucun teapot icerdigini test eder
    And kullanici sayfayi kapatir

  @mehmet @smoketest
  Scenario: TC04_amazon_flower_arama_testi

    And flower icin arama yapar
    Then sonucun flower icerdigini test eder
    And kullanici sayfayi kapatir
