Feature: Sort by Column
 
    As a manager, 
    So that I can see the applications more clear
    I want to sort the information by name and email

Background:
  Given the following students exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|+1		        |4084111317   |b-bay	|
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|+1   		    |4084222317   |b-bay-2|
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084333317	  |xxx    |
  And I am on the manager page
  
Scenario: able to sort by name
  When I follow with "first_name"
  And I should see "dshdjksa" before "Luke"
  And I should see "Luke" before "Xiaoyi"
  
Scenario: able to sort by email
  When I follow with "email"
  And I should see "dshdjksa" before "Luke"
  And I should see "Xiaoyi" before "Luke"