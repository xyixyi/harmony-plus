# Add a declarative step here for populating the DB with movies.

When /I log in with username: "(.*)", password: "(.*)"/ do |e1, e2|
  fill_in(userame, with: e1)
  fill_in(password, with: e2)
end

When /^I press "([^\"]*)"/ do |button|
  click_button(button)
end