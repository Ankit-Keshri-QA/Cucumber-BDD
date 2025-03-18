Feature: Cucumber Expression Feature


  Scenario: Test the different Cucumber expression options available with Store Page
    Given I am on the Store page
    When I click on the add Icon
    Then 1 product should be added
    And 2 products should be added

  Scenario: Test the different Cucumber expression options available with Product Page
    Given I am on the Product page
    When I click on the add Icon
    Then 1 product should be added
    And 2 products should be added

  Scenario Outline: Different Parameter Types
    Given I am on the Home page
    When I add "<product>" from the page
    Then I should see 450.0 price on the page
    And a "<message>" as well to be clear

    Examples:
      | product | message       |
      | Watch   | Product Added |
      | Jeans   | Product Added |