
  Feature: US1010_Ck_Hotels_farkli_kullanici_deneme
    @ck
    Scenario:TC12_farkli_kullanici_ismi_ve_sifra_yazarak_deneyebilmeliyim

      When kullanici "Ck_Hotels_Url" anasayfaya gider
      Then Log in yazisina tiklar
      And username olarak "Manager" girer
      And password olarak "Maneger" girer
      And Login butonuna basar
      Then sayfaya giris yapilamadigini kontrol eder
