# Add a declarative step here for populating the DB with movies.
Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /the following (.*?) exist:$/ do |type, table|
  table.hashes.each do |item|
    if    type == "students" then Student.create!(item)
    elsif type == "user" then User.create!(item)
    # elsif type == "comments" then Comment.create!(item)
    end
  end
end

And /I am logged in as "(.*?)" with password "(.*?)"$/ do |u, p|
  visit '/login'
  fill_in 'user_email', :with => u
  fill_in 'user_password', :with => p
  click_button 'Login'
  assert page.has_content? 'Login successful'
end


Given(/^now I am in b-bay apply$/) do
  visit 'applyb/b_bay_apply'
end

And /now I am in the posts page$/ do
  visit 'posts'
end