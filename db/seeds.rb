# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students = [{:first_name => 'Luke', :last_name => 'Wang', :email => 'zhaohp@hotmail.com', 
            :gender => 'male', :country => 'China', :phone_number => "4084932412", :age => 19, :country_code => '123456', :program => 'b-bay', :addressLineOne=>'myaddress', :zipCode=>94704, :dateOfBirth=> Date.new(1993, 11, 10)},
            {:first_name => 'dshdjksa', :last_name => 'hellop', :email => 'dsaf@hotmail.com', 
            :gender => 'male', :country => 'China', :phone_number => "1210537394", :age => 59, :country_code => '123456', :program => 'b-bay-2', :addressLineOne=>'myaddress2', :zipCode=>94104, :dateOfBirth=> Date.new(1994, 11, 10)}]
students.each do |student|
    Student.create!(student)
    
User.create(email: 'test@hotmail.com', password: 'testforgabe')
end
