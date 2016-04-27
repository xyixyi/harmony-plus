Feature: Sort by Column
 
    As a manager, 
    So that I can see the applications more clear
    I want to sort the information by name and email

Background:
  Given the following users exist:
    | email           | password |
    | admin@yahoo.com | password |
  Given the following students exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|zipCode|dateOfBirth|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|+1		        |4084111317   |b-bay	 |12345  |1993/01/01|
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|+1   		    |4084222317   |b-bay-2 |54321  |1992/01/01|
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084333317	  |xxx     |11234  |1991/01/01|
  And I am on the login page
  
Scenario: able to sort by first name
  When I am logged in as "admin@yahoo.com" with password "password"
  When I follow "First Name"
  And I should see "dshdjksa" before "Luke"
  And I should see "Luke" before "Xiaoyi"
  
Scenario: able to sort by email
  When I am logged in as "admin@yahoo.com" with password "password"
  When I follow "Email"
  And I should see "dshdjksa" before "Luke"
  And I should see "Xiaoyi" before "Luke"