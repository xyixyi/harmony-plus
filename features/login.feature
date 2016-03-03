Feature: Logging into the website works
 
  As an existing moderator
  So that I can access the database
  I want to administrate and handle the forms and database

Background: movies have been added to database

  Given the following user exist:
  | username                | password |
  | admin                   | admin    |

  And  I am on the HarmonyPlus home page

Scenario: restrict to movies with 'PG' or 'R' ratings
  # enter step(s) to check the 'PG' and 'R' checkboxes
  When I check the following ratings: PG,R
  # enter step(s) to uncheck all other checkboxes
  And I uncheck the following ratings: G,PG-13
  # enter step to "submit" the search form on the homepage
  When I press "ratings_submit"
  # enter step(s) to ensure that PG and R movies are visible
  Then I should see "The Incredibles"
  And I should see "Raiders of the Lost Ark"
  And I should see "The Terminator"
  And I should see "When Harry Met Sally"
  And I should see "Amelie"
  # enter step(s) to ensure that other movies are not visible
  And I should not see "Aladdin"
  And I should not see "2001: A Space Odyssey"
  And I should not see "Chicken Run"
  And I should not see "The Help"
  And I should not see "Chocolat"

Scenario: all ratings selected
  # see assignment
  When I check the following ratings: G,R,PG-13,PG
  When I press "ratings_submit"
  Then I should see all the movies