# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do
  Flat.create(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.street_name,
    description: Faker::Quote.yoda,
    price_per_night: "R$#{(0..99).to_a.sample}",
    number_of_guests: (0..7).to_a.sample
  )
end
