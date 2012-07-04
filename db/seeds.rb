# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create! do |u|
	u.email = 'eddie@codeforamerica.org'
	u.name = 'Eddie A Tejeda'
	u.password = 'password'
	u.password_confirmation = 'password'
end

Department.create! do |d|
	d.name = 'Department of Education'
	d.email = 'eddie@codeforamerica.org'
end

Department.create! do |d|
	d.name = 'Department of Labor'
	d.email = 'eddie@codeforamerica.org'
end

Department.create! do |d|
	d.name = 'Department of Revenue'
	d.email = 'eddie@codeforamerica.org'
end

Department.create! do |d|
	d.name = 'Department of Health'
	d.email = 'eddie@codeforamerica.org'
end




