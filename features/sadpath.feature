Feature: Applying for specific program with bad arguments
 
  As a student want to apply for specific program
  So that I can change my incomplete arguments to valid input
  I want to see some notices

Background: I am on the the home page
  Given the following users exist:
    | email           | password |
    | admin@yahoo.com | password |
  Given the following student exist:
    | first_name | last_name | gender  | country  | email          | country_code  |  phone_number
    | Bob        | Lee       |  Male   | CHINA    | abc@gmail.com  | +86           |  12345678
  
Scenario: first name is missing
  Given I am on b-bay apply page
  When I apply for b-bay without filling "first name"
  Then I should be on b-bay apply page
  Then I should see "First name can't be blank"
  
Scenario: last name is missing
  Given I am on b-bay apply page
  When I apply for b-bay without filling "last name"
  Then I should be on b-bay apply page
  Then I should see "Last name can't be blank"
  
Scenario: email is missing
  Given I am on b-bay apply page
  When I apply for b-bay without filling "email"
  Then I should be on b-bay apply page
  Then I should see "Email can't be blank"
  
Scenario: country is missing
  Given I am on b-bay apply page
  When I apply for b-bay without selecting "country"
  Then I should be on b-bay apply page
  Then I should see "Country not selected"
  
Scenario: phone number is missing
  Given I am on b-bay apply page
  When I apply for b-bay without filling "phone number"
  Then I should be on b-bay apply page
  Then I should see "Phone number can't be blank"
  
Scenario: zipcode is not a number
  Given I am on b-bay apply page
  When I apply for b-bay without filling "zipcode"
  Then I should be on b-bay apply page
  Then I should see "Zipcode is not a number"
  
Scenario: gender is missing
  Given I am on b-bay apply page
  When I apply for b-bay without selecting "gender"
  Then I should be on b-bay apply page
  Then I should see "Gender not selected."
  
Scenario: The same user apply twice
  Given I am on b-bay apply page
  When I apply for b-bay as "Frank" "Sbbbbbbb" with "zhaohp3@hotmail.com"
  Then I should be on the success_b_bay page
  Then I should see "You have successfully apply for B-Bay"
  Then I go to b-bay apply page
  When I apply for b-bay as "Mars" "Sbbbbbbb" with "zhaohp3@hotmail.com"
  Then I should be on b-bay apply page
  Then I should see "Email has already been taken"
  
  
# manager controller sad path

Scenario: create bad applications by manager
  Given I am on the login page
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the manager page
  When I follow "Create New Application"
  And I submit an application as "Kate" "One" with email ""
  Then I should be on the create new application page
  And I should see " Email can't be blank"
 