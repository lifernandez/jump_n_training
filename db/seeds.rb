# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

6.times do
  Club.create(
    user_id: User.all.sample.id,
    name: Faker::Company.name,
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    sport: Faker::Sport.name,
    price: Faker::Number.between(from: 10, to: 100)
  )
end
