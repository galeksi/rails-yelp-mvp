puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating restaurants...'
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Restaurant #{restaurant.name} is created"
end

puts 'Seeding completed'
