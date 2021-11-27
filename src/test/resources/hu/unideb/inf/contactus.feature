Feature: Testing the ContactUs page

  Background:
    Given the home page is opened
    And the Contact Us link is clicked

    Scenario Outline: Unsuccessful Contact Request
      Given the email address is filled with "<email>"
      And the order reference is filled with "<refNumber>"
      And the message is filled with "<contactMsg>"
      When the Send button is clicked
      Then a "<errorMessage>" error message is shown
      Examples:
        | email                | refNumber | contactMsg                 | errorMessage                                    |
        |                      | 1234      | Problem regarding my order | Invalid email address.                          |
        | berkeuslu0@gmail.com | 1234      |                            | The message cannot be blank.                    |
        | berkeuslu0@gmail.com | 1234      | Problem regarding my order | Please select a subject from the list provided. |
