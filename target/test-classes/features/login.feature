Feature: AGNES Login Page
  As a PRESENT-ENABLED employee of UBS
  I want to login to my AGNES portal
  So that I can use all the UBS Features available

  @Smoke
  Scenario Outline: Successful Login of UBS Employee
    Given I am on the Login Page of AGNES
    When I enter my "<username>" and "<password>"
    And I click on Submit button
    Then I should be redirected to my account page

    Examples:
      | username                | password    |
      | ankit.keshri@ubs.com    | Cadmus_2021 |
      | vaibhav.sankrit@ubs.com | Cadmus_2021 |
      | saurabh.mishra@ubs.com  | Cadmus_2021 |
