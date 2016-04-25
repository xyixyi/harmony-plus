Feature: Visiting all of the types of pages to ensure they exist
 
  As a potential client
  So that I can learn information about the product
  I want to see what the website and program has to offer

Background:
  Given I am on the homepage

Scenario: I can access the BBay Learn More page
  When I follow "b_bay_details"
  Then I should be on b-bay apply page

Scenario: I can access the Stories page
  #Stories Page exists
  When I follow "STORIES"
  Then I should see "Our stories in Haas Business School"

Scenario: I can access the Contacts page
  #Contacts Page exists
  When I follow "CONTACT"
  Then I should see "U.S"
  And I should see "China"
  And I should see "+1 650 6257896"
  #Not working phone number yet
  
Scenario: I can access the About Us page
  #About Us Page exists
  When I follow "ABOUT US"
  Then I should see "HARMONY-PLUS EDUCATION"
  
Scenario: I can access the Future Planning page
  #Future Planning Page exists
  When I follow "FUTURE PLANNING"
  Then I should see "Future Planning"
  And I should see "coming soon"