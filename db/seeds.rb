# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
logins = [{:admin => 'username_1', :password => 'password_1'},
         {:admin => 'username_2', :password => 'password_2'},
         {:admin => 'username_3', :password => 'password_3'},
  	 ]

logins.each do |login|
  Login.create!(login)
end