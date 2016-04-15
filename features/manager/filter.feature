Feature: Managing the applications by filtering
 
    As a manager, 
    So that I can see the applications more clear
    I want to filter the information by name and email

Background:
  Given the following students exist:
    |first_name|last_name|email     	          |gender |country|country_code |phone_number |program|age|zipCode|dateOfBirth|
    |Luke	     |Wang     |zhao@hotmail.com      |male   |China	|+1		        |4084111317   |b-bay	|18 |83262  |1993/01/01 |
    |dshdjksa  |hellop	 |dsaf@hotmail.com      |male   |China	|+1   		    |4084222317   |b-bay-2|19 |72818  |1993/02/01 |
    |Xiaoyi	   |Cheng	   |xycheng0106@gmail.com |female |china	|+1           |4084333317	  |xxx    |20 |23151  |1993/03/01 |
  And I am on the manager page
  
Scenario: able to filter by email
  And I fill in "search here" with "zhao@hotmail.com"
  Then I press "search"
  And I should see "Luke"
  And I should see "Wang"
  And I should not see "Xiaoyi"
  
Scenario: able to filter by name
  When I fill in "Xiaoyi"
  Then I press "search"
  And I should see "xycheng0106@gmail.com"

