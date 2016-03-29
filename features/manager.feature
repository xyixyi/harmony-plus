Feature: Managing the database and seeing all applications in DB
 
  As an existing moderator
  So that I can access the database
  I want to administrate and handle the forms and database # similar to login feature?

Background:
  Given the following student exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|123456		    |             |b-bay	|
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|123456		    |             |b-bay-2|
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084555317	  |xxx    |
  And I am on the manager page
  
# Scenario: able to see all student applications


Scenario: able to create new application
  When I follow "create new application"
  Then I should be on the create new application page 
  And I should see "CREATE A STUDENT APPLICATION"
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I select "18" from "Age"
  And I fill in "Email" with "a@b.com"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+1" from "Country Code"
  And I fill in "Phone Number" with "09876"
  And I select "b-bay-2" from "Program"
  And I press "Submit"
  # Then I should be on the manager page
  # And I should see "Kate One's data was successfully created."
  
  
# Scenario: able to see the new-created application
  
 