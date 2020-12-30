@wip
Feature: US1007_kullanici_data_ekleyebilmeli
  Scenario Outline: TC09_5_farkli_kisi_ile_farkli_kombinasyonlari_calismali
    When kullanici "datatable_url" anasayfaya gider
    Then new butonuna basar
    And first name girer "<firstname>"
    And Last name girer "<lastname>"
    And Position girer "<position>"
    And Office girer "<office>"
    And Extention girer "<extention>"
    And Start date girer "<date>"
    And Salary girer "<salary>"
    And Create tusuna basar
    When kullanici "<firstname>" ile arama yapar
    Then isim bolumunde "<firstname>" oldugunu dogrular
    Examples:
      | firstname | lastname | position | office | extention | date | salary |
      |mehmet     |bulut     |teacher  |ankara  |---        |12-30-2020|1000|
      |yasin      |kaya      |manager  |ankara  |--         |12-12-2020|10000|
      |cevat      |fehmi     |tester   |istanbul|Dr         |11/10/2020|12500000|
      |adnan      |calis     |QA lead  |berlin  |Master     |10-10-2020|-25000  |
      |selin      |gul       |Manuel tester|munih|--        |5/5/2020  |1256125|
