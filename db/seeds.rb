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
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens, London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open-plan living area, large kitchen, and a beautiful conservatory.',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Modern Loft in New York',
  address: '245 Park Ave, New York, NY 10017',
  description: 'A stylish and modern loft in the heart of NYC. Features high ceilings, city views, and a rooftop terrace.',
  price_per_night: 200,
  number_of_guests: 2
)

Flat.create!(
  name: 'Cozy Cabin in the Woods',
  address: '500 Pine Tree Rd, Aspen, CO 81611',
  description: 'Escape to nature in this cozy log cabin. Enjoy a fireplace, hiking trails, and breathtaking mountain views.',
  price_per_night: 150,
  number_of_guests: 4
)

Flat.create!(
  name: 'Luxury Beachfront Villa',
  address: '12 Ocean Drive, Malibu, CA 90265',
  description: 'A stunning beachfront villa with a private pool, ocean views, and direct access to the beach.',
  price_per_night: 500,
  number_of_guests: 6
)

Flat.create!(
  name: 'Charming Apartment in Paris',
  address: '32 Rue de Rivoli, Paris, France',
  description: 'A charming Parisian apartment near the Louvre. Perfect for couples looking to explore the city.',
  price_per_night: 120,
  number_of_guests: 2
)

puts "Finished seeding!"
