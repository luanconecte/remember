# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


for friend in 1...30
	Friend.create([
		{ 
			name: Faker::Address.street_name, 
			address: Faker::Address.street_address, 
			email: Faker::Internet.email,
			phone: Faker::PhoneNumber.cell_phone 
		}		
	])
end