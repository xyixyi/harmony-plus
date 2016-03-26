# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
<<<<<<< HEAD

users = [{:username => 'username_1', :password => 'password_1'},
         {:username => 'username_2', :password => 'password_2'},
         {:username => 'username_3', :password => 'password_3'},
  	 ]

logins.each do |login|
  Login.create!(login)
end
=======
logins = [{:admin => 'username_1', :password => 'password_1'},
         {:admin => 'username_2', :password => 'password_2'},
         {:admin => 'username_3', :password => 'password_3'},
  	 ]

students = [{:first_name => 'Luke', :last_name => 'Wang', :email => 'zhao@hotmail.com', 
            :gender => 'male', :country => 'China', :country_code => '123456', :program => 'b-bay'},
            {:first_name => 'dshdjksa', :last_name => 'hellop', :email => 'dsaf@hotmail.com', 
            :gender => 'male', :country => 'China', :country_code => '123456', :program => 'b-bay-2'}]

logins.each do |login|
  Login.create!(login)
end

students.each do |student|
    Student.create!(student)
end
>>>>>>> 2c2180b2f7eda4df43236a3ebba3769f264dbe70
