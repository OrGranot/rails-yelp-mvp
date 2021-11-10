category = ["chinese", "italian", "japanese", "french", "belgian"]
puts "cleaning DB..."
Restaurant.destroy_all


puts "creating some restaurants"

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: category.sample
  )
    puts "restaurant with id #{restaurant.id} created!"
end
