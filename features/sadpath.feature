Feature: Applying for specific program with bad arguments
 
  As a student want to apply for specific program
  So that I can change my incomplete arguments to valid input
  I want to see some notices

Background: I am on the EWB home page
  Given the following student exist:
    | first_name | last_name | gender  | country  | email          | country_code  |  phone_number
    | Bob        | Lee       |  Male   | CHINA    | abc@gmail.com  | +86           |  12345678
  
Scenario: first name is missing
  Given I am on b-bay apply page
  And I fill in "Last Name" with "Lee"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Age" with "15"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "First name can't be blank"
  
Scenario: last name is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Bob"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Age" with "15"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "Last name can't be blank"
  
Scenario: age is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Bob"
  And I fill in "Last Name" with "Lee"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "Age is not a number"
  
Scenario: email is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "4084124987"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "Email can't be blank"
  
Scenario: phone number is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "Phone number can't be blank"
  
Scenario: phone number is too short
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "Phone number is too short (minimum is 10 characters)"
  
Scenario: The same user apply twice
  Given I am on b-bay apply page
  When I fill in "First Name" with "易峰"
  And I fill in "Last Name" with "李"
  And I fill in "Email" with "abcd@gmail.com"       
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "You have successfully apply for B-Bay"
  
  Given I am on b-bay apply page
  When I fill in "First Name" with "亦凡"
  And I fill in "Last Name" with "吴"
  And I fill in "Email" with "abcd@gmail.com"       
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "HOME"
  Then I should see "Email has already been taken"
 