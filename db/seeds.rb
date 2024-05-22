require 'faker'


# Générer 5 restaurants avec des données aléatoires
10.times do
  flat = Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price_per_night: Faker::Number.between(from: 50, to: 500),
    number_of_guests: Faker::Number.between(from: 1, to: 10)
  )
  puts "Restaurant #{flat.name} created!"
end
