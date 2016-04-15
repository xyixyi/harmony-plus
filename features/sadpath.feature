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
  Then I should be on b-bay apply page
  Then I should see "First name can't be blank"
  
Scenario: last name is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
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
  Then I should be on b-bay apply page
  Then I should see "Last name can't be blank"
  
  
Scenario: email is missing
  Given I am on b-bay apply page
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
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
  Then I should be on b-bay apply page
  Then I should see "Email can't be blank"
  
Scenario: phone number is missing
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
  And I fill in "Address Line One" with "2020 Kittredge St."
  And I fill in "student_province" with "CA"
  And I fill in "student_city" with "Berkeley"
  And I fill in "student_zipCode" with "94704"
  # And I press "next"
  And I fill in "School" with "Berkeley"
  And I fill in "Grade" with "3"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Phone number can't be blank"
  
Scenario: The same user apply twice
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
  
  Given I am on b-bay apply page
  When I fill in "First Name" with "Mare"
  And I fill in "Last Name" with "wang"
  And I fill in "Email" with "zhaohp3@hotmail.com"
  And I fill in "Age" with "19"
  And I select "Male" from "student_gender"
  And I select "1978" from "student_dateOfBirth_1i"
  And I select "April" from "student_dateOfBirth_2i"
  And I select "5" from "student_dateOfBirth_3i"
  # And I press "next"
  And I select "U.S." from "student_country"
  And I select "+86" from "student_country_code"
  And I fill in "Phone Number" with "6508639675"
  And I fill in "Address Line One" with "1016 Kittredge St."
  And I fill in "student_province" with "CA"
  And I fill in "student_city" with "San Jose"
  And I fill in "student_zipCode" with "95129"
  # And I press "next"
  And I fill in "School" with "stanford"
  And I fill in "Grade" with "2"
  And I press "Submit"
  Then I should be on b-bay apply page
  Then I should see "Email has already been taken"
 