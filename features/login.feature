Feature: Logging into the website works
 
  As an existing moderator
  So that I can access the database
  I want to administrate and handle the forms and database

Background: movies have been added to database

  Given the following user exist:
  | username                | password |
  | admin                   | admin    |

  And  I am on the HarmonyPlus login page

Scenario: Able to log in
  When I log in with username: admin, password: admin
  Then I should see "database"