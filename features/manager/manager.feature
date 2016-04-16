Feature: Managing the database and seeing all applications in DB
 
  As a logged-in moderator
  So that I can handle the forms.
  I want to access the database

Background:
  Given the following users exist:
    | email           | password |
    | admin@yahoo.com | password |
  Given the following students exist:
    |first_name|last_name|email     	      |gender |country|country_code |phone_number |program|zipCode|dateOfBirth|
    |Luke	     |Wang     |zhao@hotmail.com  |male   |China	|+1		        |4084111317   |b-bay	|12345  |1993/01/01 |
    |dshdjksa  |hellop	 |dsaf@hotmail.com  |male   |China	|+1   		    |4084222317   |b-bay-2|54321  |1992/01/01 |
    |Xiaoyi	   |Cheng	   |0106@gmail.com    |female |china	|+1           |4084333317	  |xxx    |11234  |1991/01/01 |
  Given I am on the login page
  
Scenario: redirected to manager page
  When I am logged in as "admin@yahoo.com" with password "password"
  And I go to the login page
  Then I should be on the manager page
  
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
  And I submit an application as "Kate" "One" with email "abc@gmil.com"
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
  And I change "First Name" to "Clark"
  And I change "Last Name" to "Kent"
  And I press "Submit"
  Then I should be on the manager page
  And I should see "Clark Kent's data was successfully updated."
  
  