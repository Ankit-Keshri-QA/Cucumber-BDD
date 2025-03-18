Feature: Create New User Group in AGNES
  As a PRESENT-ENABLED employee working in AGNES
  I want to create a new user group in AGNES
  So that I can use/manage the user group for my activities

  @Smoke @Sanity
  Scenario Outline: Successful User Group Creation
    Given I am on my AGNES Homepage
    When I Click on Services::Create User Group>
    And I enter the "<Group_Name>" and "<Description>"
    And I select the "<Nominated_Owner>" and "<Assignability>" and "<Group_Type>"
    And I select the checkbox
    And I enter the "<Discussion_Log>"
    And I Click on Submit button
    Then I should be redirected to the Home page again
    And I should see the "<message>"

    Examples:
      | Group_Name   | Description | Nominated_Owner      | Assignability   | Group_Type        | Discussion_Log | message                                      |
      | Group_New_01 | Test        | ankit.keshri@ubs.com | Bussiness Owner | General Available | Approve It     | Your request has been successfully submitted |
