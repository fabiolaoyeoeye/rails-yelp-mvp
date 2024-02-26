# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese"}
mcdonald = {name: "Mc Donald", address: "57A Shoreditch High St, Chelsea E1 6PQ", category: "belgian"}
kfc = {name: "Kfc", address: "58A Shoreditch High St, Manchester E1 6PQ", category: "french"}
domino = {name: "Domino", address: "56A Shoreditch High St, Brighton E1 6PQ", category: "italian"}
[dishoom, pizza_east, mcdonald, kfc, domino].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
