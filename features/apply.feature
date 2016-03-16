Feature: Submitting into the DB works
 
  As a student
  So that I can sign up for the program
  I want to submit my information

Background:
  Given I am on the Apply Page

Scenario: Able to apply
  When I fill in "name" with "Person"
  And I fill in "age" with "21"
  And I fill in "email" with "a@b.com"
  And I check "M"
  And I fill in "city" with "Berkeley"
  And I fill in "country" with "US"
  And I press "submit"
  Then I should see "Info Submitted!"