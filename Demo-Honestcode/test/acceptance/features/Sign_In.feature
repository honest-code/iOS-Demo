# Automatically generated by HonestCode
# Do not edit this file as it will be overwritten

Feature: Sign In
  As a user
  I want to sign in and access to the app

  Scenario: Sign In - Email field empty
    Given a user in 'Sign In' page
    When the user doesn't write the 'Email' text field
    And the user write the password in 'Password' text field
    Then the 'Enter' button is disabled

  Scenario: Sign In - Password field empty
    Given a user in 'Sign In' page
    When the user write the email in 'Email' text field
    And the user doesn't write the 'Password' text field
    Then the 'Enter' button is disabled

  Scenario: Sign In - OK
    Given a user in 'Sign In' page
    When the user write the email in 'Email' text field
    And the user write the password in 'Password' text field
    And the user tap 'Enter' button
    Then the page 'Welcome' is opened

  Scenario: Sign In - Empty fields
    Given a user in 'Sign In' page
    When the user doesn't write the 'Email' text field
    And the user doesn't write the 'Password' text field
    Then the 'Enter' button is disabled
