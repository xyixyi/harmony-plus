Feature: Apply
    
    As a viewer 
    So that the website feels and looks nice and beautiful
    I want to see a pretty summer academy page
    
Scenario: check apply content
    Given I am on b-bay apply page
    And I should see "ABOUT US"
    And I should see "STORIES"
    And I should see "B-BAY"
    And I should see "Personal Info"
    
Scenario: check elements
  Given I am on b-bay apply page
  Then I should see an element "#next"

    
        