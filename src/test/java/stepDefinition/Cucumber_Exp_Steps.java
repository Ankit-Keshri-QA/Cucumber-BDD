package stepDefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Cucumber_Exp_Steps {
    @Given("I am on the Store/Product page")
    public void iAmOnTheStorePage() {
        // Alternative Text - Same for both Store and Product Page
        System.out.println("Store and Product page steps all collabed ..");
    }

    @When("^I click on the add Icon$")
    public void iClickOnTheAddIcon() {
        // Regular Expression used instead of Cucumber expression in method mapping
        System.out.println("Regular Expression ...");
    }

    @Then("{int} product(s) should be added")
    public void productShouldBeAdded(int arg0) {
        System.out.println("Optional Text (s) for 1 or multiple integral values");
    }

    @Given("I am on the Home page")
    public void iAmOnTheHomePage() {
    }

    @When("I add {word} from the page")
    public void iAddFromThePage(String arg0) {
        // We can use {word} instead of {string} as if the string has no whitespace
        System.out.println("word used in expression instead of string");
    }

    @Then("I should see {float} price on the page")
    public void iShouldSeePriceOnThePage(float arg0) {
        // float for decimal values
    }

    @And("a {string} as well to be clear")
    public void aAsWellToBeClear(String arg0) {
        // {string} as it has whitespaces
    }
}
