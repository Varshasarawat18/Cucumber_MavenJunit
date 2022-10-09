Feature: This feature would be creating a calculator for Add and Subtract

  @sanity
  Scenario: To Add two numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario Outline: To Add two numbers
    Given I have a calculator
    When I add <num1> and <num2>
    Then I should get the result as <Result>

    Examples: 
      | num1 | num2 | Result |
      |    2 |    4 |      6 |
      |    3 |    6 |      9 |
      |    7 |    8 |     15 |

  Scenario: To Add two numbers
    Given I have a calculator
    When I add below numbers
      | 3 |
      | 2 |
      | 5 |
      | 4 |
      | 3 |
    Then I should get the result as 17
