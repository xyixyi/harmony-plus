# Add a declarative step here for populating the DB with movies.
Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given(/^the following students exist:$/) do |table|
  table.hashes.each do |student|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    print student
    Student.new(student).save!
  end
end

# Given /the following (.*?) exist:$/ do |type, table|
#   table.hashes.each do |item|
#     if    type == "student" then Student.new(item).save!
#     elsif type == "user" then User.create!(item)
#     # elsif type == "comments" then Comment.create!(item)
#     else
#       assert false
#     end
#   end
# end

And /I am logged in as "(.*?)" with password "(.*?)"$/ do |u, p|
  visit '/accounts/login'
  fill_in 'user_login', :with => u
  fill_in 'user_password', :with => p
  click_button 'Login'
  assert page.has_content? 'Login successful'
end


Given(/^now I am in b-bay apply$/) do
  visit 'applyb/b_bay_apply'
end

