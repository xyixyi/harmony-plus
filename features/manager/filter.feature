Feature: Managing the applications by filtering
 
    As a manager, 
    So that I can see the applications more clear
    I want to filter the information by name and email

Background:
  Given the following users exist:
    | email           | password |
    | admin@yahoo.com | password |
  Given the following students exist:
    |first_name|last_name|email     	             |gender |country|country_code |phone_number |program|zipCode|dateOfBirth|
    |Luke	     |Wang     |zhao@hotmail.com         |male   |China	|+1		        |4084111317   |b-bay	 |12345  |1993/01/01|
    |dshdjksa  |hellop	 |dsaf@hotmail.com         |male   |China	|+1   		    |4084222317   |b-bay-2 |54321  |1992/01/01|
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com    |female |china	|+1           |4084333317	  |xxx     |11234  |1991/01/01|
  Given I am on the login page
  
Scenario: able to filter by email
  When I am logged in as "admin@yahoo.com" with password "password"
  When I fill in "Search" with "zhao@hotmail.com"
  And I refresh the index
  Then I press "Search"
  And I should see "Luke"
  And I should see "Wang"
  And I should not see "Xiaoyi"
  
Scenario: able to filter by name
  When I am logged in as "admin@yahoo.com" with password "password"
  When I fill in "Search" with "Xiaoyi"
  And I refresh the index
  Then I press "Search"
  And I should see "xycheng0106@gmail.com"
  