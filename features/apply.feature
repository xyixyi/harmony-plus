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
  And I fill in "Age" with "18"
  And I select "Female" from "student_gender"
  And I select "1988" from "student_dateOfBirth_1i"
  And I select "April" from "student_dateOfBirth_2i"
  And I select "15" from "student_dateOfBirth_3i"
  # And I press "next"
  And I select "U.S." from "student_country"
  And I select "+86" from "student_country_code"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Address Line One" with "2020 Kittredge St."
  And I fill in "student_province" with "CA"
  And I fill in "student_city" with "Berkeley"
  And I fill in "student_zipCode" with "94704"
  # And I press "next"
  And I fill in "School" with "Berkeley"
  And I fill in "Grade" with "3"
  And I press "Submit"
  Then I should be on the success_b_bay page
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"

Scenario: Last name and first name are Chinese characters
  Given I am on b-bay apply page
  When I fill in "First Name" with "饶"
  And I fill in "Last Name" with "亦然"
  And I fill in "Email" with "zhaohp44@hotmail.com"
  And I fill in "Age" with "18"
  And I select "Male" from "student_gender"
  And I select "1998" from "student_dateOfBirth_1i"
  And I select "April" from "student_dateOfBirth_2i"
  And I select "1" from "student_dateOfBirth_3i"
  # And I press "next"
  And I select "U.S." from "student_country"
  And I select "+86" from "student_country_code"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Address Line One" with "2020 Kittredge St."
  And I fill in "student_province" with "NY"
  And I fill in "student_city" with "New York"
  And I fill in "student_zipCode" with "95129"
  # And I press "next"
  And I fill in "School" with "Stanford"
  And I fill in "Grade" with "1"
  And I press "Submit"
  Then I should be on the success_b_bay page
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"