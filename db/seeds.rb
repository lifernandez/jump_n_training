# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Booking.destroy_all
Service.destroy_all
Trainer.destroy_all
User.destroy_all

date = "2023-07-05 00:00:00".to_datetime
time = Time.parse("01:00:00").seconds_since_midnight.seconds

  user1 = User.create(
    email: "ife@gmail.com",
    password: "123456",
    first_name: "Ife",
    last_name: "Sanchez",
    istrainer: true
  )

  user2 = User.create(
    email: "lcf@gmail.com",
    password: "123456",
    first_name: "Linda",
    last_name: "Fernandez",
    istrainer: false
  )

  user3 = User.create(
    email: "john@gmail.com",
    password: "123456",
    first_name: "John",
    last_name: "Smith",
    istrainer: true
  )

  user4 = User.create(
    email: "bob@gmail.com",
    password: "123456",
    first_name: "Bob",
    last_name: "Ross",
    istrainer: false
  )

  user5 = User.create(
    email: "paul@gmail.com",
    password: "123456",
    first_name: "Paul",
    last_name: "McCar",
    istrainer: true
  )

  user6 = User.create(
    email: "ben@gmail.com",
    password: "123456",
    first_name: "Ben",
    last_name: "Vosper",
    istrainer: false
  )

  user7 = User.create(
    email: "ed@gmail.com",
    password: "123456",
    first_name: "Eddie",
    last_name: "Lopez",
    istrainer: true
  )

  user8 = User.create(
    email: "jcb@gmail.com",
    password: "123456",
    first_name: "Jules",
    last_name: "Casablanca",
    istrainer: false
  )

  user9 = User.create(
    email: "tom@gmail.com",
    password: "123456",
    first_name: "Tom",
    last_name: "Joe",
    istrainer: true
  )

  user10 = User.create(
    email: "ruth@gmail.com",
    password: "123456",
    first_name: "Ruth",
    last_name: "Bell",
    istrainer: false
  )

  user11 = User.create(
    email: "skip@gmail.com",
    password: "123456",
    first_name: "Skippy",
    last_name: "Lane",
    istrainer: true
  )

  user12 = User.create(
    email: "kevin@gmail.com",
    password: "123456",
    first_name: "Kevin",
    last_name: "Something",
    istrainer: false
  )

  user13 = User.create(
    email: "js@gmail.com",
    password: "123456",
    first_name: "Javier",
    last_name: "Sanchez",
    istrainer: true
  )

  user14 = User.create(
    email: "lc@gmail.com",
    password: "123456",
    first_name: "Louis",
    last_name: "Clermont",
    istrainer: false
  )

  user15 = User.create(
    email: "marco@gmail.com",
    password: "123456",
    first_name: "Marco",
    last_name: "Ricci",
    istrainer: true
  )

  user16 = User.create(
    email: "bb@gmail.com",
    password: "123456",
    first_name: "Billy",
    last_name: "Bob",
    istrainer: false
  )

  user17 = User.create(
    email: "joe@gmail.com",
    password: "123456",
    first_name: "Joe",
    last_name: "Smith",
    istrainer: true
  )

  user18 = User.create(
    email: "ling@gmail.com",
    password: "123456",
    first_name: "Ling",
    last_name: "Chan",
    istrainer: false
  )

  user19 = User.create(
    email: "ra@gmail.com",
    password: "123456",
    first_name: "Ruby",
    last_name: "Ancheta",
    istrainer: true
  )

  user20 = User.create(
    email: "bf@gmail.com",
    password: "123456",
    first_name: "Blanca",
    last_name: "Fern",
    istrainer: false
  )

  user21 = User.create(
    email: "lou@gmail.com",
    password: "123456",
    first_name: "Louise",
    last_name: "Danerman",
    istrainer: true
  )

  user22 = User.create(
    email: "cunning@gmail.com",
    password: "123456",
    first_name: "Carol",
    last_name: "Cunningham",
    istrainer: false
  )

  trainer1 = Trainer.create(
    description: "I'm an excellent trainer",
    sports: "Football,Cycling,Golf",
    user: user1
  )

  service1 = Service.create(
    trainer: trainer1,
    address: "Brighton",
    price: 25,
    description: "I will create a 12 week training plan to help you train for your next marathon!",
    sport: "Football",
    service_type: "Training Plan"
  )

  service2= Service.create(
    trainer: trainer1,
    address: "Brighton",
    price: 25,
    description: "We will train at Hyde Park for 2 hours!",
    sport: "Cycling",
    service_type: "Session"
  )

  service3= Service.create(
    trainer: trainer1,
    address: "Brighton",
    price: 30,
    description: "We will play golf at James Heire Park for 2 hours!",
    sport: "Golf",
    service_type: "Session"
  )

  booking1 = Booking.create(
    user: user2,
    service: service1,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking2 = Booking.create(
    user: user4,
    service: service2,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer2 = Trainer.create(
    description: "I'm an excellent trainer",
    sports: "Running,Cycling,Climbing",
    user: user3
  )

  service4 = Service.create(
    trainer: trainer2,
    address: "London",
    price: 300,
    description: "I will customize a training plan to help you train for your next marathon!",
    sport: "Running",
    service_type: "Training Plan"
  )

  service5 = Service.create(
    trainer: trainer2,
    address: "London",
    price: 50,
    description: "We will cycle for 3 hours starting at Richmond Park.",
    sport: "Cycling",
    service_type: "Session"
  )

  service6 = Service.create(
    trainer: trainer2,
    address: "London",
    price: 30,
    description: "We will meet at Climbing Arches and I will help you get a level up!",
    sport: "Climbing",
    service_type: "Session"
  )

  booking3 = Booking.create(
    user: user6,
    service: service4,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking4 = Booking.create(
    user: user8,
    service: service5,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking5 = Booking.create(
    user: user10,
    service: service6,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer3 = Trainer.create(
    description: "I have been training athletes for a decade and I keep finding exciting new ways to push the human body! Train with me and you'll keep beating your PB!",
    sports: "Running,Swimming,Cycling",
    user: user5
  )

  service7 = Service.create(
    trainer: trainer3,
    address: "London",
    price: 300,
    description: "I will create a training plan to help you train for your next marathon!",
    sport: "Running",
    service_type: "Training Plan"
  )

  service8 = Service.create(
    trainer: trainer3,
    address: "London",
    price: 12,
    description: "Let's practice your backstroke!",
    sport: "Swimming",
    service_type: "Session"
  )

  service9 = Service.create(
    trainer: trainer3,
    address: "London",
    price: 12,
    description: "I will create a 12 week training plan to help you train for your next marathon!",
    sport: "Cycling",
    service_type: "Session"
  )

  booking6 = Booking.create(
    user: user12,
    service: service7,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking7 = Booking.create(
    user: user14,
    service: service8,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking8 = Booking.create(
    user: user16,
    service: service9,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer4 = Trainer.create(
    description: "I'm an excellent trainer",
    sports: "Running,Climbing,Tennis",
    user: user7
  )

  service10 = Service.create(
    trainer: trainer4,
    address: "London",
    price: 288,
    description: "I will create a training plan to help you train for your next marathon!",
    sport: "Running",
    service_type: "Training Plan"
  )

  service11 = Service.create(
    trainer: trainer4,
    address: "London",
    price: 30,
    description: "Going to climb for 2 hours.",
    sport: "Climbing",
    service_type: "Session"
  )

  service12 = Service.create(
    trainer: trainer4,
    address: "London",
    price: 22,
    description: "Tennis at the park for an hr.",
    sport: "Tennis",
    service_type: "Session"
  )

  booking9 = Booking.create(
    user: user4,
    service: service12,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking10 = Booking.create(
    user: user4,
    service: service10,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer5 = Trainer.create(
    description: "I am passionate about fitness. Become my trainee to unlock your ultimate potential.",
    sports: "Running,Cycling,Kayaking",
    user: user9
  )

  service13 = Service.create(
    trainer: trainer5,
    address: "London",
    price: 500,
    description: "I will create a training plan to help you train for your next marathon!",
    sport: "Running",
    service_type: "Training Plan"
  )

  service14 = Service.create(
    trainer: trainer5,
    address: "London",
    price: 35,
    description: "Cycling at Peckham Rye.",
    sport: "Cycling",
    service_type: "Session"
  )

  service15 = Service.create(
    trainer: trainer5,
    address: "London",
    price: 50,
    description: "Kayaking for an hour at Thames.",
    sport: "Kayaking",
    service_type: "Session"
  )

  booking11 = Booking.create(
    user: user22,
    service: service13,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking12 = Booking.create(
    user: user22,
    service: service14,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  booking13 = Booking.create(
    user: user22,
    service: service15,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer6 = Trainer.create(
    description: "I love sports and fitness! Let's sweat together!",
    sports: "Running,Kayaking,Cycling",
    user: user11
  )

  service16 = Service.create(
    trainer: trainer6,
    address: "London",
    price: 12,
    description: "Let's run",
    sport: "Running",
    service_type: "Session"
  )

  booking11 = Booking.create(
    user: user2,
    service: service16,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer7 = Trainer.create(
    description: "Let's kayak on the Thames",
    sports: "Kayaking",
    user: user13
  )

  service17 = Service.create(
    trainer: trainer7,
    address: "London",
    price: 12,
    description: "Cycling training at Hackney Park.",
    sport: "Cycling",
    service_type: "Session"
  )

  booking11 = Booking.create(
    user: user4,
    service: service17,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer8 = Trainer.create(
    description: "Fitness is life! Let's train.",
    sports: "Running",
    user: user15
  )

  service18 = Service.create(
    trainer: trainer8,
    address: "Brighton",
    price: 12,
    description: "Let's run for 2 hours. I'll couch you throughout.",
    sport: "Running",
    service_type: "Session"
  )

  booking12 = Booking.create(
    user: user4,
    service: service18,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer9 = Trainer.create(
    description: "I love fitness. Let's be fit together!",
    sports: "Running",
    user: user17
  )

  service19 = Service.create(
    trainer: trainer9,
    address: "Brighton",
    price: 20,
    description: "We will run for 3 hours... I need money!",
    sport: "Running",
    service_type: "Session"
  )

  booking13 = Booking.create(
    user: user6,
    service: service19,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer10 = Trainer.create(
    description: "Hire me",
    sports: "Kayaking",
    user: user19
  )

  service20 = Service.create(
    trainer: trainer10,
    address: "Brighton",
    price: 30,
    description: "We will be kayaking for an hour.",
    sport: "Kayaking",
    service_type: "Session"
  )

  booking14 = Booking.create(
    user: user8,
    service: service20,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  trainer11 = Trainer.create(
    description: "I like sports.",
    sports: "Cycling",
    user: user21
  )

  service21 = Service.create(
    trainer: trainer11,
    address: "Brighton",
    price: 30,
    description: "Two hours intense training.",
    sport: "Cycling",
    service_type: "Session"
  )

  booking15 = Booking.create(
    user: user10,
    service: service21,
    status: 0,
    start_time: date,
    end_time: date + time
  )
