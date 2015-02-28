Fellow.destroy_all

20.times do
	Fellow.create(
	image: Faker::Avatar.image,
	name: Faker::Lorem.words.join(' '),
	nonprofit: Faker::Lorem.words.join(' '),
	benefactor: Faker::Lorem.words.join(' '),
	email: Faker::Internet.email,
	github: Faker::Internet.url,
	employer: Faker::Lorem.words.join(' '),
	metro: Faker::Lorem.words.join(' '),
	cohort: Faker::Date.forward(23),
	fellowship: Faker::Lorem.words.join(' '),
	)
end

4.times do 
	Fellowship.create(
		title: Faker::Lorem.words.join(''),
		fellow_id: Faker::Number.digit,
	)
end





