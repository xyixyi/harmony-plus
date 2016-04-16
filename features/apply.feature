Feature: Submitting into the DB works
 
  As a student
  So that I can apply for specific program
  I want to submit my information

Background:
  
  Given the following student exist:
    | first_name | last_name | gender  | country  | email          | country_code  |  phone_number
    | Bob        | Lee       |  Male   | CHINA    | bob@gmail.com  | +86           |  12345678

Scenario: Able to apply
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

Scenario: Last name and first name are Chinese characters
  Given I am on b-bay apply page
  When I fill in "First Name" with "饶"
  And I fill in "Last Name" with "亦然"
  And I fill in "Email" with "zhaohp44@hotmail.com"
  And I select "Female" from "student_gender"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "student_zipCode" with "94704"
  And I select "U.S." from "student_country"
  And I press "Submit"
  Then I should be on the success_b_bay page
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  