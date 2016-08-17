# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do |i|
  i = rand(0..4)
  Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.city,
    category: categories[i],
    phone_number: Faker::PhoneNumber.phone_number
  )
end
