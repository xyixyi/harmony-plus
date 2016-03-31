Feature: Submitting into the DB works
 
  As a student
  So that I can sign up for the program
  I want to submit my information

Background:
  
  Given the following student exist:
    | first_name | last_name | gender  | country  | email          | country_code  |  phone_number
    | Bob        | Lee       |  Male   | CHINA    | bob@gmail.com  | +86           |  12345678



Scenario: Able to apply
  Given now I am in b-bay apply
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "a@b.com"
  And I fill in "Phone Number" with "09876"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Given now I am in successfully apply b-bay page
  Then I should see "homepage"
  # Then I should see "You have successfully apply for B-Bay"

Scenario: first name is missing
  Given now I am in b-bay apply
  And I fill in "Last Name" with "Lee"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "1234"
  And I fill in "Age" with "15"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "First name cannot be empty."
  Then I should see "Apply for B_bay"
  
  
Scenario: last name is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Bob"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "1234"
  And I fill in "Age" with "15"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Last name cannot be empty or invaild last name."

Scenario: age is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Bob"
  And I fill in "Last Name" with "Lee"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "1234"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "please enter your age."
  Then I should see "Apply for B_bay"
  
Scenario: email is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Email address cannot be empty."
  
Scenario: phone number is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Phone number is not vaild."