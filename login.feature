Feature: Login
  As a customer,
  I want to login with email and password,
  So that I can use the app

  Background: Start point
    Given I am at the Login page

  Scenario: Logging in with valid credentials
    #Given I am at the Login page
    When I fill the account email textbox with value "admin@admin.com"
    And I fill the password textbox with value "1234"
    And I click the login button
    Then I should be at the home page
    And title of home page is "Global Position"
    But login button is not present

  Scenario: Logging in with invalid credentials
    #Given I am at the Login page
    When I fill the account email textbox with value "adminNovalid@admin.com"
    And I fill the password textbox with value "novalid"
    And I click the login button
    Then a can not login text appears

  Scenario Outline: Logging in with valid credentials
  When I fill the account email textbox with value <email>
  And I fill the password textbox with value <password>
  And I click the login button
  Then I should be at the home page
  And title of home page is "Global Position"
  But login button is not present

  Examples:
  | email             | password  |
  | admin@admin.com   | 1234      |
  | user@admin.com    | 5432      |