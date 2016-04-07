# Add a declarative step here for populating the DB with movies.
Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /the following (.*?) exist:$/ do |type, table|
  table.hashes.each do |item|
    if    type == "students" then Student.create!(item)
    elsif type == "users" then User.create!(item)
    elsif type == "posts" then Post.create!(item)
    # elsif type == "comments" then Comment.create!(item)
    end
  end
end

And /I am logged in as "(.*?)" with password "(.*?)"$/ do |u, p|
  visit '/login'
  fill_in 'user_email', :with => u
  fill_in 'user_password', :with => p
  click_button 'Log in'
  # page.has_content? 'Login successful'
end


Given(/^now I am in b-bay apply$/) do
  visit 'applyb/b_bay_apply'
end

Given(/^now I am in successfully apply b-bay page$/) do
  # puts page.body
  visit 'applyb/success_b_bay'
  puts page.body
end

Then /I can access the posts page$/ do
  visit '/posts'
end

When /I access the posts page$/ do
  visit '/posts'
end


Then /I should see "(.*)" to be "(.*)"/ do |e1, e2|
  pending
end

Then /^the "(.*)" should have "(.*)" of "(.*)"$/ do |e1, e2, e3|
  pending
end
  
When(/^I fill in "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)" with "([^"]*)"        \# same as the existing user's email$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I follow with "([^"]*)"$/) do |arg1|
  pending "Unimplemented" # Write code here that turns the phrase above into concrete actions
end

Then(/^I scroll down the page$/) do
  pending "Unimplemented" # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the navbar$/) do
  pending "Unimplemented" # Write code here that turns the phrase above into concrete actions
end