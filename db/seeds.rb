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
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
pizza_west =  {name: "Pizza West", address: "65B Ditchshore Low Rd, London E2 3PQ", category: "italian"}
boeuf_francais = {name: "Boeuf Français", address: "96 Baguette High Rd, London E3 2PQ", category: "french"}
la_fritte = {name: "La Fritte", address: "121 Seum Bd, London E1 2WS", category: "belgian"}

[dishoom, pizza_east, pizza_west, boeuf_francais, la_fritte].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
