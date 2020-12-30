@wip
Feature: US1007_kullanici_data_ekleyebilmeli
  Scenario Outline: TC09_5_farkli_kisi_ile_farkli_kombinasyonlari_calismali
    When kullanici "https://editor.datatables.net/" anasayfaya gider
    Then new butonuna basar
    And first name girer "<firstname>"
    And Last name girer "<lastname>"
    And Postion girer "<position>"
    And Office girer "<office>"
    And Extention girer "<extention>"
    And Start date girer "<date>"
    And Salary girer "<salary>"
    And Create tusuna basar
    When kullanici ilk isim ile arama yapar
    Then isim bolumunde isminin oldugunu dogrular
    Examples:
      | firstname | lastname | position | office | extention | date | salary |
      |mehmet     |bulut     |teacher   |ankara  |---        |12-30-2020|1000|
