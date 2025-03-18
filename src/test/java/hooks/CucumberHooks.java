package hooks;

import io.cucumber.java.AfterAll;
import io.cucumber.java.BeforeAll;

public class CucumberHooks {

    @BeforeAll
    public static void beforeAll() {
        System.out.println("Before All Hook ..");
    }

    @AfterAll
    public static void afterAll() {
        System.out.println("After All Hook ..");
    }
}
