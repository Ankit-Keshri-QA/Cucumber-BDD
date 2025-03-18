Feature: Decommission User group
  As a Group Owner of a user group
  I should be able to decommission my user group
  So that I can manage my user groups

  @Sanity
  Scenario Outline: Decommission User group
    Given I am on my AGNES Homepage
    When I Click on Services::Decommission User Group>
    And I select the "<Group_Name>" from the field
    And I click on Next button
    And I enter the "<Discussion_Log>" on the Review page
    And I Click on Submit button
    Then I should be redirected to the Home page again
    And I should see the "<message>"

    Examples:
      | Group_Name    | Discussion_Log | message                                 |
      | Group_Test_01 | Approve        | Your request was successfully submitted |