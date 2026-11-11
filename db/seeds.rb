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
restaurants = [
  { name: "Epicure", address: "112 Rue du Faubourg Saint-Honoré, Paris", phone_number: "01 53 43 43 40", category: "french" },
  { name: "Sushi Shop", address: "15 Rue de Rivoli, Paris", phone_number: "01 42 00 00 01", category: "japanese" },
  { name: "Mamma Mia", address: "8 Rue Montorgueil, Paris", phone_number: "01 42 00 00 02", category: "italian" },
  { name: "Lao Lane Xang", address: "102 Avenue d'Ivry, Paris", phone_number: "01 42 00 00 03", category: "chinese" },
  { name: "Chez Léon", address: "18 Rue des Bouchers, Bruxelles", phone_number: "+32 2 511 14 15", category: "belgian" }
]

restaurants.each do |attrs|
  restaurant = Restaurant.create!(attrs)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
