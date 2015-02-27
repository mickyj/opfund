# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
	Fellow.create(
	image: Faker::Avatar.image,
	name: Faker::Lorem.words.join(' '),
	nonprofit: Faker::Lorem.words.join(' '),
	benefactor: Faker::Lorem.words.join(' '),
	# email: Faker::Internet.email,
	employer: Faker::Lorem.words.join(' '),
	metro: Faker::Lorem.words.join(' '),
	cohort: Faker::Date.forward(23),
	)
end





