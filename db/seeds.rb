puts "Destroying records"

Restaurant.destroy_all

puts "Creating Restaurants"

100.times do
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: rand(1..5),
    chef_name: Faker::Name.name
  )
  puts "Created #{resto.name}"
end


puts "Created #{Restaurant.count} restaurants"
