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

  
And /^I refresh the index$/ do
  Student.reindex
end

When(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  page.body.should =~ /#{arg1}.*#{arg2}/m
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

Then(/^I should see logo "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I submit an application as "([^"]*)" "([^"]*)" with email "([^"]*)"$/) do |first, last, arg3|
  fill_in("First Name", :with => first)
  fill_in("Last Name", :with => last)
  fill_in("Email", :with => arg3)
  # for testing reason all fileds are the same  fu*k the grade report
  fill_in("Phone Number", :with => "4081234111")
  fill_in("Zipcode", :with => "94709")
  click_button("Submit")
end

Then /^I should see the image "(.+)"$/ do |image|
    page.should have_xpath("//img[@src=\"img/#{image}\"]")
end

Then /^I see the page with video link "(.*?)" to "(.*?)"$/ do |link,url|
  page.should have_link(link, :href => url)
end