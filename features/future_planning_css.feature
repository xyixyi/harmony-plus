Feature: Future Planning
    
    As a viewer 
    So that the users know that the feature will be available soon in the future.
    I want to see a pretty future planning page
    
Scenario: test CSS
    Given I am on the future planning page
    Then I should see logo "harmony_logo"
    And I should see "background" to be "white"
    Then the "harmony_logo " should have "margin" of "1.5em"
    And I should see "Coming Soon"
    And I should see "Future Planning"

    