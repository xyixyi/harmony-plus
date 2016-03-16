# Add a declarative step here for populating the DB with movies.

Given /the following (.*?) exist:$/ do |type, table|
  table.hashes.each do |item|
    if    type == "users"    then User.create!(item)
    # elsif type == "articles" then Article.create!(item)
    # elsif type == "comments" then Comment.create!(item)
    end
  end
end

When /^I log in with username: "(.*)", password: "(.*)"$/ do |e1, e2|
  fill_in(userame, with: e1)
  fill_in(password, with: e2)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end