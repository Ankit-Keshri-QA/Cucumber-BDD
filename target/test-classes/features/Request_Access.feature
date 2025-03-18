Feature: Request Access Feature
  As an employee of AGNES
  I want to submit a Request access for the user Group for myself
  So That I can become a member of the user group

  @Sanity
  Scenario Outline: Successful Request Access for Self
    Given I am on my AGNES Homepage
    When I Click on Services::Request Access
    And I Enter the "<reason>"
    And I enter the "<Resource_Name>" inside the Search field
    And I click on Add Button
    And I Click on Submit button
    Then I should be redirected to the Home page again
    And I should see the "<message>"

    Examples:
      | reason  | Resource_Name                             | message                                 |
      | Testing | Group Access for Group_Test_01 user group | Your request was successfully submitted |
      | Testing | AA_PROD_1000005678                        | Your request was successfully submitted |
      | Testing | ATAR_TE2_100000981                        | Your request was successfully submitted |
