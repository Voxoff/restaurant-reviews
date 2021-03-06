puts "creating Restaurants"

Restaurant.destroy_all

100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: (1..5).to_a.sample
  )
  puts restaurant.name
end



Review.create(restaurant: Restaurant.first, content: "Amazing food")
Review.create(restaurant: Restaurant.first, content: "Incredible food")

puts 'Finished'
