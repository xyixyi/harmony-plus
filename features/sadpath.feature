Feature: Applying for specific program with bad arguments
 
  As a student want to apply for specific program
  So that I can change my incomplete arguments to valid input
  I want to see some notices

Background: I am on the EWB home page
  Given the following users exist:
    | email           | password |
    | admin@yahoo.com | password |
  Given the following student exist:
    | first_name | last_name | gender  | country  | email          | country_code  |  phone_number
    | Bob        | Lee       |  Male   | CHINA    | abc@gmail.com  | +86           |  12345678
  
Scenario: first name is missing
  Given I am on b-bay apply page
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "First name can't be blank"
  
Scenario: last name is missing
  Given I am on b-bay apply page
  And I fill in "First Name" with "Kate"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Last name can't be blank"
  
Scenario: email is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Email can't be blank"
  
Scenario: country is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Country not selected"
  
Scenario: phone number is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "student_zipCode" with "94704"
  And I select "U.S." from "student_country"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Phone number can't be blank"
  
Scenario: zipcode is not a number
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "abcde"
  And I select "U.S." from "student_country"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Zipcode is not a number"
  
Scenario: gender not selected
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "12345"
  And I select "U.S." from "student_country"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Gender not selected."
  
Scenario: The same user apply twice
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I select "U.S." from "student_country"
  And I press "Submit"
  Then I should be on the success_b_bay page
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  
  Given I am on b-bay apply page
  When I fill in "First Name" with "Mars"
  And I fill in "Last Name" with "Sb"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I select "U.S." from "student_country"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Email has already been taken"
  
Scenario: create bad applications by manager
  Given I am on the login page
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the manager page
  When I follow "create new application"
  And I submit an application as "Kate" "One" with email ""
  Then I should be on the create new application page
  And I should see " Email can't be blank"
 