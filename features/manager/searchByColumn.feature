Feature: Sort by Column
 
    As a manager, I can sort the information by name and email

Background:
  Given the following students exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|age|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|+1		        |4084111317   |b-bay	|18 |
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|+1   		    |4084222317   |b-bay-2|19 |
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084333317	  |xxx    |20 |
  And I am on the manager page
  
Scenario: able to filter by name
  When I follow with "first_name"
  And I should see "dshdjksa" before "Luke"
  And I should see "Xiaoyi" before "Luke"
  
Scenario: able to filter by email
  When I follow with "email"
  And I should see "dshdjksa" before "Luke"
  And I should see "Xiaoyi" before "Luke"