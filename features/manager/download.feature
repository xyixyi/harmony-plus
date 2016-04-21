Feature: Downloading all applications
 
    As a manager, 
    So that I can keep a copy locally.
    I want to download all the applications as csv file
    
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

Scenario: Exporting the fruits list
  When I am logged in as "admin@yahoo.com" with password "password"
  And I am on the manager page
  When I follow "Export"
  Then the downloaded file content should be:
    """
    first_name,last_name,email,country_code,phone_number
    Luke,Wang,zhao@hotmail.com,male,+1,4084111317 
    dshdjksa,hellop,dsaf@hotmail.com,male,+1,4084222317
    Xiaoyi,Cheng,xycheng0106@gmail.com,female,china,+1,4084333317	  
    """