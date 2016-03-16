Feature: Visiting all of the types of pages to ensure they exist
 
  As a potential buyer
  So that I can learn information about the product
  I want to see what the website and program has to offer

Scenario: I can access the BBay Learn More page
  #Home Page exists
  #Information not fully updated/implemented yet
  When I press "b-bay_learn_more"
  Then I should be on the BbayLearnMore page
  
Scenario: I can access the Ideal Learn More page
  When I press "ideal_learn_more"
  Then I should be on the IdealLearnMore page

Scenario: I can access the Stories page
  #Stories Page exists
  When I press "stories"
  Then I should see "Our Stories"
  #Not sure if these are needed or not
  #When I check "2015"
  #Then I should see "2015 Info"
  
Scenario: I can access the Contacts page
  #Contacts Page exists
  When I press "contacts"
  Then I should see "U.S"
  And I should see "China"
  And I should see "(999)999-9999" #Not working phone number yet
  
Scenario: I can access the About Us page
  #About Us Page exists
  When I press "about_us"
  Then I should see "About Us"
  And I should see "Bill Zhao"
  
Scenario: I can access the Future Planning page
  #Future Planning Page exists
  When I press "future_planning"
  Then I should see "Future Planning"