@regfeature
Feature: Register

  Background:
    Given user is on registration page

  @positive
  Scenario: Success register
    And user input email data
    And user input password data
    And user input address data
    When user click register button
    Then user should be redirected to homepage

  @negative
  Scenario: Failed register
    And user input email data
    And user input password data
    When user click register button
    Then user should be able to see warning message
