package Runners;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        plugin = "json:target/cucumber-parallel/tm4j_result.json",
        features = "src/test/resources",
        glue = "Test"
)

public class Runner {

}
