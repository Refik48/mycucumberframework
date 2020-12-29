package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin={"html:target\\cucumber_reports.html"},

        features="src/test/resources/features",
        glue="stepdefinitions",
        dryRun = false,
        tags="@wip"

)
// dryRun = false olursa, testleri çalıştırır.
// dryRun = true  olursa, eksik olan methodları bulur ve size öneride bulunur.

//tags=  bunda hangi @ varsa o calisir..or , and ve not durumlari var..cok onemli ...hangi dosyada
// calisirsak ona @wip yazariz..sadece onu calistiririz.



public class Runner {

}
