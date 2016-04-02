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

Scenario: first name is missing
  Given now I am in b-bay apply
  And I fill in "Last Name" with "Lee"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Age" with "15"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "First name can't be blank"
  Then I should see "Apply for B_bay"
  
  
Scenario: last name is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Bob"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I fill in "Age" with "15"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Last name can't be blank"

Scenario: age is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Bob"
  And I fill in "Last Name" with "Lee"
  And I fill in "Email" with "bob@gmail.com"
  And I fill in "Phone Number" with "4084124987"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Age is not a number"
  Then I should see "Apply for B_bay"
  
Scenario: email is missing
  Given now I am in b-bay apply
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "4084124987"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Email can't be blank"
  
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
  Then I should see "Phone number can't be blank"
  
Scenario: phone number is too short
  Given now I am in b-bay apply
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "U.S." from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Phone number is too short (minimum is 10 characters)"
  
  
Scenario: Last name and first name are Chinese characters
  Given now I am in b-bay apply
  When I fill in "First Name" with "好"
  And I fill in "Last Name" with "李"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  
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
  
  Given now I am in b-bay apply
  When I fill in "First Name" with "圆圆"
  And I fill in "Last Name" with "高"
  And I fill in "Email" with "yuan@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  
  Given now I am in b-bay apply
  When I fill in "First Name" with "冰冰"
  And I fill in "Last Name" with "范"
  And I fill in "Email" with "bing@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  
  Given now I am in b-bay apply
  When I fill in "First Name" with "哈士奇"
  And I fill in "Last Name" with "小猫春天"
  And I fill in "Email" with "miao@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  
  
Scenario: The same user apply twice
  Given now I am in b-bay apply
  When I fill in "First Name" with "易峰"
  And I fill in "Last Name" with "李"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "You have successfully apply for B-Bay"
  
  Given now I am in b-bay apply
  When I fill in "First Name" with "亦凡"
  And I fill in "Last Name" with "吴"
  And I fill in "Email" with "a@b.com"
  And I fill in "Age" with "18"
  And I select "Female" from "Gender"
  And I select "CHINA" from "Country"
  And I select "+86" from "Country Code"
  And I fill in "Phone Number" with "1234567890"
  And I press "Submit"
  Then I should see "homepage"
  Then I should see "Email has already been taken"
