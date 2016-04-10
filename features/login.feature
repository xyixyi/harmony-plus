Feature: Logging into the website works
 
  As an existing moderator
  So that I can access the database
  I want to signup an account and login

Background: 
  Given the following users exist:
  | email           | password |
  | admin@yahoo.com | password |
  # And I am on the login page
  
  # Given the following posts exist:
  # | Title           | Content |
  # | Shrayus         | Henry   |

Scenario: Able to log in
  When I am logged in as "admin@yahoo.com" with password "password"
  Then I am on the manager page
  # Then I should see "Title Content"
  # And I should see "New Post"
  
  
# Scenario: Non-Admins cannot access posts
#   When I access the posts page
#   Then I should see "Log In"
#   And I should see "Sign up"

# Scenario: Checking posts exist
#   When I am logged in as "admin@yahoo.com" with password "password"
#   Then I can access the posts page
#   Then I should see "Shrayus"
#   And I should see "Henry"
  
# Scenario: Make and Update posts
#   When I am logged in as "admin@yahoo.com" with password "password"
#   Then I can access the posts page
#   When I follow "New Post"
#   And I fill in "post_title" with "Shrayus"
#   And I fill in "post_content" with "Henry"
#   And I press "Save"
#   And I follow "Back"
#   Then I should see "Shrayus"
#   And I should see "Henry"
  
#   When I follow "Edit"
#   When I fill in "post_title" with "Hello"
#   And I fill in "post_content" with "World"
#   And I press "Save"
#   And I follow "Back"
#   And I should see "Hello"
#   And I should see "World"