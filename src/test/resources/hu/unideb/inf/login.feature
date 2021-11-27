Feature: Automation Practice: Sign In page

  Background:
    Given the home page is opened
    And the Sign In link is clicked

    Scenario Outline: Unsuccessful login
      Given the 'email' is filled with '<parameter>'
      And the 'passwd' is filled with '<pw>'
      When the Sign In button is clicked
      Then the '<errorMsg>' error message is shown
      Examples:
        | parameter         | pw    | errorMsg                   |
        |                   |       | An email address required. |
        | invalidemail.com  |       | Invalid email address.     |
        | correct@email.com |       | Password is required.      |
        | correct@email.com | 12345 | Authentication failed.     |