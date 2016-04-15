Feature: Apply B-Bay
    
    As a viewer 
    So that the website feels and looks nice and beautiful
    I want to see a pretty summer academy page
    
Scenario: CSS
    Given I am on b_bay apply page
    Then I should see logo "harmony_logo"
    And I should see "background" to be "white"
    Then the "harmony_logo " should have "font-size" of "200%"
    Then the "UC Berkeley Hass Business School" should have "margin" of "2.5em"
    Then the "B-Bay" should have "margin" of "2.5em"
    And I should see "Personal Info"
    And I should see "Berkeley Business Academy for Youth"
    And I should see "B-BAY"

    
        