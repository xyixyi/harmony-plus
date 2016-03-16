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
