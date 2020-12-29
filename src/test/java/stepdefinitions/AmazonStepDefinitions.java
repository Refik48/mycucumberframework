package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.AmazonPage;
import utilities.ConfigReader;
import utilities.Driver;
public class AmazonStepDefinitions {
    AmazonPage amazonPage=new AmazonPage();

    @Given("kullanici amazon anasayfaya gider")
    public void kullanici_amazon_anasayfaya_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("amazon_url"));
    }

    @Given("iphone icin arama yapar")
    public void iphone_icin_arama_yapar() {
        amazonPage.searchbox.sendKeys("iphone"+ Keys.ENTER);
    }
    @Then("sonucun iphone icerdigini test eder")
    public void sonucun_iphone_icerdigini_test_eder() {
        Assert.assertTrue(amazonPage.sonucYaziElementi.getText().contains("iphone"));
    }
    @Given("teapot icin arama yapar")
    public void teapot_icin_arama_yapar() {
        amazonPage.searchbox.sendKeys("teapot"+ Keys.ENTER);
    }
    @Then("sonucun teapot icerdigini test eder")
    public void sonucun_teapot_icerdigini_test_eder() {
        Assert.assertTrue(amazonPage.sonucYaziElementi.getText().contains("teapot"));
    }
    @Given("flower icin arama yapar")
    public void flower_icin_arama_yapar() {
        amazonPage.searchbox.sendKeys("flower"+ Keys.ENTER);
    }
    @Then("sonucun flower icerdigini test eder")
    public void sonucun_flower_icerdigini_test_eder() {
        Assert.assertTrue(amazonPage.sonucYaziElementi.getText().contains("flower"));
    }


    @And("kullanici sayfayi kapatir")
    public void kullaniciSayfayiKapatir() {
        Driver.closeDriver();
    }


    @When("{string} icin arama yapar")
    public void icin_arama_yapar(String aranankelime) {
        amazonPage.searchbox.sendKeys(aranankelime+Keys.ENTER);

    }

    @Then("sonucun {string} icerdigini test eder")
    public void sonucun_icerdigini_test_eder(String arananKelime) {
        Assert.assertTrue(amazonPage.sonucYaziElementi.getText().contains(arananKelime));

    }

}
