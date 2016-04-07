Feature: Submitting into the DB works
 
  As a student
  So that I can apply for specific program
  I want to submit my information

Background:
  
  Given the following student exist:
    | first_name | last_name | gender  | country  | email          | country_code  |  phone_number
    | Bob        | Lee       |  Male   | CHINA    | bob@gmail.com  | +86           |  12345678

Scenario: Able to apply
  Given now I am in b-bay apply
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "zhaohp@hotmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should be on the success_b_bay page
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"

Scenario: Last name and first name are Chinese characters
  Given now I am in b-bay apply
  When I fill in "First Name" with "洋"
  And I fill in "Last Name" with "杨"
  And I fill in "Email" with "lee@b.com"
  And I fill in "Age" with "18"
  And I select "Male" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  