Feature: Logging into the website works
 
  As an existing moderator
  So that I can access the database
  I want to administrate and handle the forms and database

Background: 
  Given the following users exist:
  | username  | password |
  | admin     | password |

  And I am on the login page

Scenario: Able to log in
  When I am logged in as "admin" with password "admin"
  And I go to the posts page
  Then I should see "Listing posts"
  And I should see "New Post"