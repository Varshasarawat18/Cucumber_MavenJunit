Feature: Login Feature Scenario

  Background: 
    Given I have launched the application
    And I click on the login link

  Scenario: This scenario is to define the login happy path
    When I enter the correct username and password
    And Click on Login Button
    Then I should land on the home page

  @regression
  Scenario: This scenario is to define the failure path
    When I enter the incorrect username and password
    And Click on Login Button
    Then I should get the error message "The email or password you have entered is invalid."

  @sanity @1234_1
  Scenario: This scenario is to define the failure path
    When I enter the username "Abc@gmail.com" and password "Simpli@123"
    And Click on Login Button
    Then I should get the error message "The email or password you have entered is invalid."

  Scenario Outline: This scenario is to define the failure path
    When I enter the username "<username>" and password "<password>"
    And Click on Login Button
    Then I should get the error message "The email or password you have entered is invalid."

    Examples: 
      | username      | password |
      | abc@gmail.com | Abc@1234 |
      | pqr@gmail.com | Pqr@1234 |
