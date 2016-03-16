# Add a declarative step here for populating the DB with movies.

Given /the following (.*?) exist:$/ do |type, table|
  table.hashes.each do |item|
    if    type == "users"    then User.create!(item)
    # elsif type == "articles" then Article.create!(item)
    # elsif type == "comments" then Comment.create!(item)
    end
  end
end

And /I am logged in as "(.*?)" with password "(.*?)"$/ do |u, p|
  visit '/accounts/login'
  fill_in 'user_login', :with => u
  fill_in 'user_password', :with => p
  click_button 'Login'
  assert page.has_content? 'Login successful'
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

When /^(?:|I )check "([^"]*)"$/ do |field|
  check(field)
end