Feature: Submitting into the DB works
 
  As a student
  So that I can sign up for the program
  I want to submit my information

Background:
  Given I am on the HarmonyPlus login page

Scenario: Able to apply
  When I am on the apply page
  Then I fill in name as "Person"
  And I fill in age as "21"
  And I fill in email as "a@b.com"
  And I check "M"
  And I fill in city as "Berkeley"
  And I fill in country as "US"
  And I press "submit"
  Then I should see "Info Submitted!"