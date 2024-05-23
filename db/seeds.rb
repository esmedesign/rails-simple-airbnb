# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
clifton = {name: "Light & Spacious Garden Flat London", address: "10 Clifton Gardens London W9 1DT'", description: "A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory", price_per_night: 75, number_of_guests: 3}
balamory = {name: "Colourful balamory", address: "22 Alphabet road, Kent, ME15 78S", description: "4 beds, near the sea and perfect for kids", price_per_night: 100, number_of_guests: 6}
healey = {name: "Industrial and new in centre of town", address: "12 Healey garden, London T3R FG6'", description: "2 beds, small kitchen but right near the station", price_per_night: 200, number_of_guests: 2}
party = {name: "party villa in party town", address: "13 pacha road, ibiza centre, KJH8 9SH'", description: "Right in the centre of Ibiza, small pool included", price_per_night: 120, number_of_guests: 8}
puglia = {name: "Sunny Puglian villa", address: "10 Puglia road, Italy, IT4LY'", description: "Sunny garden with pool and olive trees", price_per_night: 200, number_of_guests: 12}

[clifton, balamory, healey, party, puglia].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
