# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Service.destroy_all
User.destroy_all
Category.destroy_all

 cat1 = Category.create(
  category_type: "trainer plan"
 )

 cat2 = Category.create(
   category_type: "trainer session"
  )

 user1 = User.create(
  email: "test@testing.com",
  password: "123456",
  first_name: "Bob",
  last_name: "Ross"
 )

 service1= Service.create(
  user: user1,
  category: cat1,
  address: "123 Street",
  price: 12,
  description: "I will create a 12 week training plan to help you train for your next marathon!",
  sport: "Running"
)

service2= Service.create(
  user: user1,
  category: cat1,
  address: "123 Street",
  price: 12,
  description: "12 weeks of one on one training",
  sport: "Tennis"
)

service3= Service.create(
  user: user1,
  category: cat1,
  address: "123 Street",
  price: 12,
  description: "I will create a 12 week training plan to help you train for your next ironman!",
  sport: "Calistenics"
)

#  user2 = User.create(
#   email: "test@testing.com",
#   password: "123456",
#   first_name: "Bob",
#   last_name: "Ross"
#  )

# tennis = Service.create(
#   user: user1,
#   category: cat1,
#   address: "123 Street",
#   price: 12,
#   description: "Will help you train for your next marathon!",
#   sport: "Running"
# )

# harry = User.new(
#   email: "harry_p@aol.com",
#   password: "123456",
#   first_name: "Harry",
#   last_name: "Potta"
# )

# file = URI.open("https://assets-prd.ignimgs.com/2021/01/26/harry-potter-button-1611619333944.jpg")
# harry.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# harry.save!
# puts "Hi Harry P"

# gym = Destination.new(
#   user: dumbledore,
#   title: "Hogwarts",
#   address: "Hogwarts Castle, Highlands, Scotland, Great Britain",
#   price: 934,
#   description: "It's a magical place!"
# )

# file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
# gym.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# file = URI.open("https://assets.mugglenet.com/wp-content/uploads/2020/04/Gryffindor-Common-Room.jpg")
# gym.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# file = URI.open("https://i.pinimg.com/originals/1a/6f/10/1a6f1089455b17f0c959468646070ceb.jpg")
# gym.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# file = URI.open("https://imgk.timesnownews.com/story/GRY.jpg?tr=w-1200,h-900")
# gym.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# file = URI.open("https://static.wikia.nocookie.net/harrypotter/images/f/fb/Room_of_Requirement_OotP.png/revision/latest?cb=20161215063619")
# gym.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# gym.save!
