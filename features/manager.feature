Feature: Managing the database and seeing all applications in DB
 
  As an existing moderator
  So that I can access the database
  I want to administrate and handle the forms and database # similar to login feature?

Background:
  Given the following students exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|age|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|+1		        |4084111317   |b-bay	|18 |
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|+1   		    |4084222317   |b-bay-2|19 |
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084333317	  |xxx    |20 |
  And I am on the manager page
  
# Scenario: able to see all student applications
#   And I should see "Luke"


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

# Scenario: able to delete application
  # When I follow "more info"
  # And I press "delete this application"
  # Then I should be on the manager page
  # And I should see "Kate One's data was successfully created."
  
# Scenario: able to edit application
#   When I follow "more info"
#   And I press "edit this application"
  
 