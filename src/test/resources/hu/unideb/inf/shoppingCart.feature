Feature: Automation Practice: Shopping Cart page

  Background:
    Given the home page is opened

    Scenario: Empty shopping cart
      When the Cart url is clicked
      Then the 'Your shopping cart is empty.' cart message is displayed