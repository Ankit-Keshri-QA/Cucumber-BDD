package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;

@CucumberOptions(
        features = "src/test/resources/features",
        glue = "stepDefinition",
        plugin = {"pretty", "html:target/cucumber-reports.html"},
        monochrome = true,
        tags="@Sanity or @Smoke"
)
public class TestNGRunnerTest extends AbstractTestNGCucumberTests {

    @BeforeClass
    public static void setup(){
        System.out.println("Before Class ...");
    }

    @AfterClass
    public static void tearDown(){
        System.out.println("After Class ...");
    }
}
