Feature: Automation Practice Search

  Background:
    Given the home page is opened

    Scenario: Successful search
      Given the 'search_query_top' is filled with 'dress'
      When the Search button is clicked
      Then the '7 results have been found.' search message is displayed.

    Scenario: Unsuccessful search
      Given the 'search_query_top' is filled with 'flag'
      When the Search button is clicked
      Then the '0 results have been found.' search message is displayed.
