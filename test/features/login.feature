Feature: User login with email and password

  Scenario: user login with correct email and password
     Given  I open login page
      When  I login with correct email and password
      Then  I should be on overview page

  Scenario: user see login page
      When  I open login page
      Then  I should be see login page title
       And  I should see email field
       And  I should see password field
       And  I should see login button

  Scenario Outline: user see error with invalid credentials
     Given  I open login page
      When  I try to login with <wrong credentials>
      Then  I should be on error page
     
     Examples:
     |empty username|
     |empty password|
     |wrong password|
     |email not exists|