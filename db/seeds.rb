# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students = [{:first_name => 'Luke', :last_name => 'Wang', :email => 'zhao@hotmail.com', 
            :gender => 'male', :country => 'China', :phone_number => "412493241234", 
               :age => 19, :country_code => '123456', :program => 'b-bay', :addressLineOne=>'202 sddka st', :zipCode=> 123455, :school=>"berkeley"}]
students.each do |student|
    Student.create!(student)
end
