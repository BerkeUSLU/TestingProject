Feature: Automation Practice Sign Up page

  Background:
    Given the home page is opened
    And the Sign In link is clicked

    Scenario Outline: Unsuccessful Sign Up
      Given the 'email_create' is filled with '<parameter>'
      When the Create an account button is clicked
      Then the '<errorMessage>' new account error message is shown
      Examples:
        | parameter         | errorMessage                                                                                                        |
        |                   | Invalid email address.                                                                                              |
        | invalidemail.com  | Invalid email address.                                                                                              |
        | valid@email.com   | An account using this email address has already been registered. Please enter a valid password or request a new one.|
        | invalid@          | Invalid email address.                                                                                              |
