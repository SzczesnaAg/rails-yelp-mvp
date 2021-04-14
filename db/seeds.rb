# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating restaurants"

5.times do
  Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  Review.new(
    rating: Faker::Number.between(from: 0, to: 5),
    content: Faker::Restaurant.review
  )
end

puts "Finished!"
