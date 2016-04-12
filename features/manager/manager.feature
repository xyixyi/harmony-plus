Feature: Managing the database and seeing all applications in DB
 
  As a logged-in moderator
  So that I can handle the forms.
  I want to access the database

Background:
  Given the following users exist:
    | email           | password |
    | admin@yahoo.com | password |
  Given the following students exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|age|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|+1		        |4084111317   |b-bay	|18 |
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|+1   		    |4084222317   |b-bay-2|19 |
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084333317	  |xxx    |20 |
  Given I am on the login page
  
  
Scenario: Able to log in
  When I am logged in as "admin@yahoo.com" with password "password"
  Then I am on the homepage
  
Scenario: able to see all student applications
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the manager page
  And I should see "Luke"
  And I should see "Details for dshdjksa"
  
Scenario: able to create new application
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the manager page
  When I follow "create new application"
  Then I should be on the create new application page 
  And I should see "CREATE A STUDENT APPLICATION"
  When I fill in "First Name" with "Kate"
  And I fill in "Last Name" with "One"
  And I fill in "Age" with "18"
  And I fill in "Email" with "a@b.com"
  And I select "Male" from "Gender"
  And I select "U.S." from "Country"
  And I select "+1" from "Country Code"
  And I fill in "Phone Number" with "4083213458"
  And I select "b-bay" from "Program"
  And I press "Submit"
  Then I should be on the manager page
  And I should see "Kate One's data was successfully created."

Scenario: able to delete application
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the manager page
  When I follow "Details for Luke"
  And I press "delete this application"
  Then I should be on the manager page
  And I should see "Luke Wang's data was successfully deleted."
  And I should not see "Details for Luke"
  
Scenario: able to edit application
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the manager page
  When I follow "Details for dshdjksa"
  And I press "edit this application"
  And I fill in "First Name" with "Clark"
  And I fill in "Last Name" with "Kent"
  And I press "Submit"
  Then I should be on the manager page
  And I should see "Clark Kent's data was successfully updated."
  