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
  When I apply for b-bay as "Kate" "One" with "zhaohp3@hotmail.com"
  Then I should be on the success_b_bay page
  Then I should see "You have successfully apply for B-Bay"
  

Scenario: Last name and first name are Chinese characters
  Given I am on b-bay apply page
  When I apply for b-bay as "亦然" "饶" with "hp1234@hotmail.com"
  Then I should be on the success_b_bay page
  Then I should see "You have successfully apply for B-Bay"
  