require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address , category: Restaurant::CATEGORY_FOOD.sample)
end

puts "Finished!"
