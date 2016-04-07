Feature: Summer Academy
    
    As a viewer 
    So that the website feels and looks nice and beautiful
    I want to see a pretty summer academy page
    
Scenario: CSS
    Given I am on summer academy page
    Then I should see logo "harmony_logo"
    And I should see "background" to be "white"
    Then the "harmony_logo " should have "margin" of "1.5em"
    Then the "UC Berkeley Hass Business School" should have "margin" of "2.5em"
    Then the "Course benefit" should have "margin" of "2.5em"
    Then the "B-Bay" should have "margin" of "2.5em"
    Then the "IDEAL" should have "margin" of "2.5em"
    And I should see "stories"
    And I should see "contact"
    And I should see "B-Bay"
    And I should see "IDEAL"
    
        