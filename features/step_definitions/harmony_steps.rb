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

<<<<<<< HEAD
  
=======
>>>>>>> df3cd431b20ad85725b4f19a34731512773d76f1
And /^I refresh the index$/ do
  Student.reindex
end

When(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  page.body.should =~ /#{arg1}.*#{arg2}/m
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

When(/^I apply for b\-bay as "([^"]*)" "([^"]*)" with "([^"]*)"$/) do |arg1, arg2, arg3|
  fill_in("First Name", :with => arg1)
  fill_in("Last Name", :with => arg2)
  fill_in("Email", :with => arg3)
  # for testing reason all fileds are the same  fu*k the grade report
  fill_in("Phone Number", :with => "4081234111")
  fill_in("Zipcode", :with => "94709")
  select("U.S.", :from => "student_country")
  select("Female", :from => "student_gender")
  click_button("Submit")
end

When(/^I apply for b\-bay without filling "([^"]*)"$/) do |type|
  fill_in("First Name", :with => "Kate")
  fill_in("Last Name", :with => "Test")
  fill_in("Email", :with => "test@gmail.com")
  fill_in("Phone Number", :with => "4081234111")
  fill_in("Zipcode", :with => "94709")
  select("U.S.", :from => "student_country")
  select("Female", :from => "student_gender")
  
  if type == "email" 
    fill_in("Email", :with => "")
  elsif type == "first name"
    fill_in("First Name", :with => "")
  elsif type == "last name"
    fill_in("Last Name", :with => "")
  elsif type == "phone number"
    fill_in("Phone Number", :with => "")
  elsif type == "zipcode"
    fill_in("Zipcode", :with => "")
  end
  click_button("Submit")
end

When(/^I apply for b\-bay without selecting "([^"]*)"$/) do |type|
  fill_in("First Name", :with => "Kate")
  fill_in("Last Name", :with => "Test")
  fill_in("Email", :with => "test@gmail.com")
  fill_in("Phone Number", :with => "4081234111")
  fill_in("Zipcode", :with => "94709")
  if type == "country"
    select("Female", :from => "student_gender")
  else # type is gender
    select("U.S.", :from => "student_country")
  end
  click_button("Submit")
end

When(/^I change "([^"]*)" to "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end


Then /^I should see the image "(.+)"$/ do |image|
    page.should have_xpath("//img[@src=\"img/#{image}\"]")
end

Then /^I see the page with video link "(.*?)" to "(.*?)"$/ do |link,url|
  page.should have_link(link, :href => url)
end

Then /^I should (not )?see an element "([^"]*)"$/ do |negate, selector|
  expectation = negate ? :should_not : :should
  page.send(expectation, have_css(selector))
end
