# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.create! do |u|
	u.email = 'eddie@codeforamerica.org'
	u.name = 'Eddie A Tejeda'
	u.phone = '555-555-555'
	u.password = 'password'
	u.password_confirmation = 'password'
end
