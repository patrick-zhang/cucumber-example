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