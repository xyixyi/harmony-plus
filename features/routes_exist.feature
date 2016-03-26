Feature: Visiting all of the types of pages to ensure they exist
 
  As a potential buyer
  So that I can learn information about the product
  I want to see what the website and program has to offer

Background:
  Given I am on the homepage

Scenario: I can access the BBay Learn More page
  #Home Page exists
  #Information not fully updated/implemented yet
#   When I follow "b-bay_learn_more"
#   Then I should be on the BbayLearnMore page
  
# Scenario: I can access the Ideal Learn More page
#   When I follow "ideal_learn_more"
#   Then I should be on the IdealLearnMore page

Scenario: I can access the Stories page
  #Stories Page exists
  When I follow "STORIES"
  Then I should see "Our Stories"

Scenario: I can access the Contacts page
  #Contacts Page exists
  When I follow "CONTACT"
  Then I should see "U.S"
  And I should see "China"
  And I should see "(666)666-6666"
  #Not working phone number yet
  
Scenario: I can access the About Us page
  #About Us Page exists
  When I follow "ABOUT US"
  Then I should see "Who are we?"
  And I should see "What's Our Goal?"
  And I should see "How We Work?"
  
Scenario: I can access the Future Planning page
  #Future Planning Page exists
  When I follow "F.P."
  Then I should see "Future Planning"