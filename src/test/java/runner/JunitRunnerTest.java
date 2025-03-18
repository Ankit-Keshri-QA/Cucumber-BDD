package runner;

import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "stepDefinition",
        plugin = {"pretty", "html:target/junit/cucumber-reports.html", "summary"},
        snippets = CucumberOptions.SnippetType.CAMELCASE,
        monochrome = true,
        tags="@Smoke and @Sanity"
)

public class JunitRunnerTest {

    @BeforeClass
    public static void setup(){
        System.out.println("Before Class ...");
    }

    @AfterClass
    public static void tearDown(){
        System.out.println("After Class ...");
    }



}
