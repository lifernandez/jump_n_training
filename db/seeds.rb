# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Order.destroy_all
Review.destroy_all
Booking.destroy_all
Service.destroy_all
Trainer.destroy_all
User.destroy_all

date = "2023-07-05 00:00:00".to_datetime
time = Time.parse("01:00:00").seconds_since_midnight.seconds

  user1 = User.new(
    email: "jns@gmail.com",
    password: "123456",
    first_name: "Jane",
    last_name: "Sanchez",
    istrainer: true
  )
  file = URI.open("https://i.pinimg.com/474x/92/f6/4c/92f64c7d0a2566a5452b4a68e8bf308b.jpg")
  user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user1.save!
  puts "Hi User1"

  user2 = User.new(
    email: "ss@gmail.com",
    password: "123456",
    first_name: "Sarah",
    last_name: "Sue",
    istrainer: false
  )

  file = URI.open("https://images.contentstack.io/v3/assets/blt45c082eaf9747747/blt91728955a4af6fbb/5de0ba07bfcabd6600c114d6/HOMEWORKOUT_HEAD.jpg?format=pjpg&auto=webp&quality=76&width=1232")
  user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user2.save!
  puts "Hi User2"

  user3 = User.new(
    email: "john@gmail.com",
    password: "123456",
    first_name: "John",
    last_name: "Smith",
    istrainer: true
  )

  file = URI.open("https://cdn.shopify.com/s/files/1/2665/6840/files/London_mararthon_running_coach_1500x.jpg?v=1664987108")
  user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user3.save!
  puts "Hi User3"

  user4 = User.new(
    email: "bob@gmail.com",
    password: "123456",
    first_name: "Bob",
    last_name: "Ross",
    istrainer: false
  )

  file = URI.open("https://www.drugwatch.com/wp-content/uploads/mens-health-hero.jpg")
  user4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user4.save!
  puts "Hi User4"

  user5 = User.new(
    email: "paul@gmail.com",
    password: "123456",
    first_name: "Paul",
    last_name: "McCar",
    istrainer: true
  )

  file = URI.open("https://as1.ftcdn.net/v2/jpg/05/69/47/66/1000_F_569476600_N94kdkCfICYIuRmZ6HfxQyXZ1CNupyfY.jpg")
  user5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user5.save!
  puts "Hi User5"

  user6 = User.new(
    email: "ben@gmail.com",
    password: "123456",
    first_name: "Ben",
    last_name: "Vosper",
    istrainer: false
  )

  file = URI.open("https://www.naturalpathmed.com/wp-content/uploads/2017/10/blog-fit-older-man.jpg")
  user6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user6.save!
  puts "Hi User6"

  user7 = User.new(
    email: "ed@gmail.com",
    password: "123456",
    first_name: "Eddie",
    last_name: "Lopez",
    istrainer: true
  )

  file = URI.open("https://i.pinimg.com/474x/3e/ac/7e/3eac7e2435c547d4964450f84f827d3d.jpg")
  user7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user7.save!
  puts "Hi User7"

  user8 = User.new(
    email: "jcb@gmail.com",
    password: "123456",
    first_name: "Jules",
    last_name: "Casablanca",
    istrainer: false
  )

  file = URI.open("https://www.qardio.com/wp-content/uploads/2016/01/spring_running_man_blog.jpg")
  user8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user8.save!
  puts "Hi User8"

  user9 = User.new(
    email: "tom@gmail.com",
    password: "123456",
    first_name: "Tom",
    last_name: "Joe",
    istrainer: true
  )

  file = URI.open("https://www.athleteally.org/wp-content/uploads/2018/12/Sam-Needs-Headshot.png")
  user9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user9.save!
  puts "Hi User9"

  user10 = User.new(
    email: "ruth@gmail.com",
    password: "123456",
    first_name: "Ruth",
    last_name: "Bell",
    istrainer: false
  )

  file = URI.open("https://hips.hearstapps.com/goodhousekeeping-uk/main/embedded/33948/happy-woman-in-40s.jpg")
  user10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user10.save!
  puts "Hi User10"

  user11 = User.new(
    email: "skip@gmail.com",
    password: "123456",
    first_name: "Lily",
    last_name: "Miller",
    istrainer: true
  )

  file = URI.open("https://healthcare.utah.edu/sites/g/files/zrelqx136/files/migrate_images/0_pqjcs16b.jpg")
  user11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user11.save!
  puts "Hi User11"

  user12 = User.new(
    email: "kj@gmail.com",
    password: "123456",
    first_name: "Ken",
    last_name: "Johnson",
    istrainer: false
  )

  file = URI.open("https://img.freepik.com/free-photo/cheerful-curly-dark-skinned-man-white-long-sleeved-t-shirt-smiles-sincerely-rests-near-sea_197531-23689.jpg")
  user12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user12.save!
  puts "Hi User12"

  user13 = User.new(
    email: "js@gmail.com",
    password: "123456",
    first_name: "Javier",
    last_name: "Sanchez",
    istrainer: true
  )

  file = URI.open("https://www.kimalexisphotography.com/wp-content/uploads/2019/09/KaraCrane_402.jpg")
  user13.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user13.save!
  puts "Hi User13"

  user14 = User.new(
    email: "lc@gmail.com",
    password: "123456",
    first_name: "Louis",
    last_name: "Clermont",
    istrainer: false
  )

  file = URI.open("https://media.istockphoto.com/id/1359149467/photo/shot-of-a-handsome-young-man-standing-alone-and-stretching-during-his-outdoor-workout.jpg?s=612x612&w=0&k=20&c=bCwqY95KICwmFZKRgbc9yd9O-0Ra1oHrhv6vYe6Weh8=")
  user14.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user14.save!
  puts "Hi User14"

  user15 = User.new(
    email: "marco@gmail.com",
    password: "123456",
    first_name: "Marco",
    last_name: "Ricci",
    istrainer: true
  )

  file = URI.open("https://9ea7469d30465e75444e-c54cf9109a4d71ddfa1ccf1feea14eb4.ssl.cf1.rackcdn.com/BPI-Headshots-27-Edit.jpg")
  user15.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user15.save!
  puts "Hi User15"

  user16 = User.new(
    email: "bb@gmail.com",
    password: "123456",
    first_name: "Billy",
    last_name: "Bob",
    istrainer: false
  )

  file = URI.open("https://img.freepik.com/premium-photo/focused-fitness-shot-man-stretching-before-run_590464-38888.jpg")
  user16.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user16.save!
  puts "Hi User16"

  user17 = User.new(
    email: "joe@gmail.com",
    password: "123456",
    first_name: "Joe",
    last_name: "Smith",
    istrainer: true
  )

  file = URI.open("https://i.pinimg.com/474x/78/1f/aa/781faae239ae960f1952b6cf6a45bfe0.jpg")
  user17.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user17.save!
  puts "Hi User17"

  user18 = User.new(
    email: "ling@gmail.com",
    password: "123456",
    first_name: "Ling",
    last_name: "Chan",
    istrainer: false
  )

  file = URI.open("https://cdn.sanity.io/images/xmpcmhrn/production/2188acdb9bf06fe04a6e668f585eae2c7b2fc593-3600x2400.jpg?rect=0,188,3600,2023&w=436&h=245&q=80&fit=max&auto=format")
  user18.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user18.save!
  puts "Hi User18"

  user19 = User.new(
    email: "ra@gmail.com",
    password: "123456",
    first_name: "Ruby",
    last_name: "Ancheta",
    istrainer: true
  )

  file = URI.open("https://9ea7469d30465e75444e-c54cf9109a4d71ddfa1ccf1feea14eb4.ssl.cf1.rackcdn.com/BPI-Headshots-251-Edit.jpg")
  user19.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user19.save!
  puts "Hi User19"

  user20 = User.new(
    email: "bf@gmail.com",
    password: "123456",
    first_name: "Blanca",
    last_name: "Fern",
    istrainer: false
  )

  file = URI.open("https://imgk.timesnownews.com/story/women_0.gif")
  user20.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user20.save!
  puts "Hi User20"

  user21 = User.new(
    email: "lou@gmail.com",
    password: "123456",
    first_name: "Louise",
    last_name: "Danerman",
    istrainer: true
  )

  file = URI.open("https://poyeyphotos.com/wp-content/uploads/2020/07/NB_163_layers-720x1080.jpg")
  user21.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user21.save!
  puts "Hi User21"

  user22 = User.new(
    email: "cunning@gmail.com",
    password: "123456",
    first_name: "Carol",
    last_name: "Cunningham",
    istrainer: false
  )

  file = URI.open("https://www.mayoclinichealthsystem.org/-/media/national-files/images/hometown-health/2022/sitting-on-sofa-writing-in-journal.jpg?h=370&w=660&la=en&hash=AEA5A82A0053CAA81859033A055EE4E0")
  user22.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  user22.save!
  puts "Hi User22"

  trainer1 = Trainer.create(
    description: "Motivated trainer with a keen eye for detail and a focus on technique refinement. Specializes in form correction and injury prevention strategies to ensure clients perform at their best while minimizing the risk of setbacks.",
    sports: "Football,Cycling,Golf",
    user: user1
  )

  service1 = Service.new(
    trainer: trainer1,
    address: "138 Kingsland Road, E28DY, London",
    price: 25,
    description: "Embark on a transformative journey with our week-long training plan designed to enhance your running/cycling performance. This comprehensive program incorporates a mix of endurance, speed, and recovery sessions, expertly crafted by our trainers to help you achieve your goals.",
    sport: "Running",
    service_type: "Training Plan",
    duration: 1,
    title: "Comprehensive Week-Long Running Training"
  )

  file = URI.open("https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2022/07/eat_after_working_out_732x549_thumb-732x549.jpg")
  service1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service1.save!
  puts "Hi Service1"

  service2= Service.new(
    trainer: trainer1,
    address: "138 Kingsland Road, E28DY, London",
    price: 25,
    description: "Push your limits and improve your stamina with a power-packed running/cycling session led by a personal trainer. This 2-hour session is designed to challenge you and enhance your endurance capabilities.",
    sport: "Cycling",
    service_type: "Session",
    duration: 3,
    title: "Intense Endurance Boost"
  )

  file = URI.open("https://media.self.com/photos/61bcd0e05aed92fc4251b026/16:9/w_5839,h_3284,c_limit/GettyImages-1213234926.jpeg")
  service2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service2.save!
  puts "Hi Service2"

  service3= Service.new(
    trainer: trainer1,
    address: "138 Kingsland Road, E28DY, London",
    price: 30,
    description: "Conquer the toughest terrains with a focused running/cycling session that incorporates hill intervals. Our personal trainer will guide you through a 3-hour session, helping you build strength, speed, and mental resilience.",
    sport: "Golf",
    service_type: "Session",
    duration: 2,
    title: "Hill Interval Mastery"
  )

  file = URI.open("https://images.ctfassets.net/8urtyqugdt2l/3D2iE8CWiIZ8ZnZ1ZGCjWJ/97aaba852f17eb10e65b8aceeb63acad/1594309624-how-to-start-working-out-again-header.jpg")
  service3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service3.save!
  puts "Hi Service3"

  service30 = Service.new(
    trainer: trainer1,
    address: "London",
    price: 35,
    description: "Get ready to sweat and sculpt in a dynamic total-body training session. Together, we'll focus on building lean muscle, improving flexibility, and boosting endurance through a combination of bodyweight exercises, resistance training, and core work. Let's work hard and achieve the results you desire!",
    sport: "Yoga",
    service_type: "Session",
    duration: 2,
    title: "Sculpt & Sweat"
  )

  file = URI.open("https://cdn.mos.cms.futurecdn.net/q5tzid4VnHvn8TGiq7myab.jpeg")
  service30.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service30.save!
  puts "Hi Service3"

  # service31 = Service.new(
  #   trainer: trainer1,
  #   address: "London",
  #   price: 35,
  #   description: "Discover the joy of movement with a fun and engaging training session that combines dance-inspired exercises, functional movements, and bodyweight training. Join me for a session filled with infectious energy, uplifting music, and a supportive environment to help you improve your fitness and coordination.",
  #   sport: "Dance",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Dance Fusion: Move, Groove, and Get Fit"
  # )

  # file = URI.open("https://ichef.bbci.co.uk/news/976/cpsprodpb/178F1/production/_107479469_gettyimages-688005548.jpg")
  # service31.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service31.save!
  # puts "Hi Service31"

  # service32 = Service.new(
  #   trainer: trainer1,
  #   address: "London",
  #   price: 35,
  #   description: "Maximize your performance and prevent injuries with a mobility and stability training session. In this session, we'll focus on improving joint range of motion, enhancing balance, and strengthening the stabilizer muscles. Let's work together to optimize your movement mechanics and unlock your full athletic potential.",
  #   sport: "Running",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Mobility Mastery: Enhance Performance & Prevent Injuries"
  # )

  # file = URI.open("https://www.technogym.com/wpress/wp-content/uploads/2019/04/common-mistakes-sports-conditioning-img1.jpg")
  # service32.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service32.save!
  # puts "Hi Service32"

  # service33 = Service.new(
  #   trainer: trainer1,
  #   address: "London",
  #   price: 35,
  #   description: "Revitalize your mind and body with a rejuvenating yoga-inspired training session. Experience a harmonious blend of flowing movements, mindful breathing, and deep stretches that will leave you feeling refreshed, centered, and ready to take on any challenge that comes your way.",
  #   sport: "Yoga",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Yoga Revive: Restore Mind and Body"
  # )

  # file = URI.open("https://images.squarespace-cdn.com/content/v1/58d7e42817bffcffb8099cc9/1588727673333-4NKX46L7MT53O7MK9IYT/image-asset.jpeg")
  # service33.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service33.save!
  # puts "Hi Service3"

  booking1 = Booking.create(
    user: user2,
    service: service1,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review1 = Review.create(
    booking: booking1,
    rating: 4,
    comment: "The sports training session was a game-changer for me. The trainer's ability to provide a supportive yet challenging environment gave me the confidence to push my boundaries and achieve breakthrough results."
  )

  booking2 = Booking.create(
    user: user4,
    service: service2,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review2 = Review.create(
    booking: booking2,
    rating: 5,
    comment: "The training session was thoughtfully designed to target different aspects of my game. The trainer's commitment to addressing my specific weaknesses and improving my overall performance was evident."
  )

  trainer2 = Trainer.create(
    description: "Dynamic and adaptable trainer committed to creating a positive and inclusive training environment. Equipped with a vast repertoire of training techniques and a genuine desire to help clients achieve their fitness aspirations.",
    sports: "Running,Cycling,Climbing",
    user: user3
  )

  service4 = Service.new(
    trainer: trainer2,
    address: "132 Curtain Road, EC2A3AR, London",
    price: 300,
    description: "Take your training to the next level with our intensive week-long program. Each day, you'll engage in targeted running/cycling workouts, including interval training, hill repeats, tempo runs, and long-distance rides, all carefully structured to push your limits and maximize your progress.",
    sport: "Running",
    service_type: "Training Plan",
    duration: 1,
    title: "Intensive Week of Running Workouts"
  )

  file = URI.open("https://d2lfsu1qnyxzxu.cloudfront.net/cms/iStock-960571902-0_d2.jpg")
  service4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service4.save!
  puts "Hi Service4"


  service5 = Service.new(
    trainer: trainer2,
    address: "132 Curtain Road, EC2A3AR, London",
    price: 50,
    description: "Embark on an epic running/cycling journey with a personal trainer by your side. Explore scenic routes and conquer impressive distances in this 2-hour session tailored to challenge and inspire endurance athletes.",
    sport: "Cycling",
    service_type: "Session",
    duration: 2,
    title: "Long Distance Adventure"
  )

  file = URI.open("https://mindpumppodcast.com/wp-content/uploads/2018/09/UdOGV3Q6y3XvOZg90QfA_Stop_Working_Out_And_Start_Practicing_Mind_Pump_Media.jpg")
  service5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service5.save!
  puts "Hi Service5"

  service6 = Service.new(
    trainer: trainer2,
    address: "132 Curtain Road, EC2A3AR, London",
    price: 30,
    description: "Boost your speed, agility, and overall athletic performance with this dynamic running/cycling session. In just 2 hours, our personal trainer will guide you through a series of drills and exercises to elevate your performance.",
    sport: "Climbing",
    service_type: "Session",
    duration: 3,
    title: "Speed and Agility Fusion"
  )

  file = URI.open("https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2021-12/211208-working-out-stock-mn-1310-55e1c7.jpg")
  service6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service6.save!
  puts "Hi Service6"

  # service34 = Service.new(
  #   trainer: trainer2,
  #   address: "London",
  #   price: 35,
  #   description: "Elevate your cardiovascular endurance and burn calories with a heart-pumping cardio session. From high-intensity interval training (HIIT) to circuit training, we'll explore different training modalities that will challenge your cardiovascular system and improve your overall fitness level.",
  #   sport: "Calisthenics",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Cardio Blitz: Energize Your Heart & Burn Calories"
  # )

  # file = URI.open("https://images.squarespace-cdn.com/content/v1/58d7e42817bffcffb8099cc9/1589325563460-CZXBQBRMF4DWSMOB2U8B/aNZlw7Ow.jpeg?format=1000w")
  # service34.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service34.save!
  # puts "Hi Service34"

  # service35 = Service.new(
  #   trainer: trainer2,
  #   address: "London",
  #   price: 35,
  #   description: "Unleash your inner athlete with a sports-specific training session designed to enhance your performance in your chosen discipline. Whether you're a runner, cyclist, or team sport player, we'll focus on sport-specific drills, functional movements, and conditioning exercises to help you excel on the field or court.",
  #   sport: "Calisthenics",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Sport-Specific Excellence: Unleash Your Athletic Potential"
  # )

  # file = URI.open("https://s3-media0.fl.yelpcdn.com/bphoto/qDvA1hpZtf1OsTOYvuZALw/1000s.jpg")
  # service35.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service35.save!
  # puts "Hi Service35"

  # service36 = Service.new(
  #   trainer: trainer2,
  #   address: "London",
  #   price: 35,
  #   description: "Find your inner zen and build strength from within with a mindful strength training session. Using a combination of bodyweight exercises, resistance bands, and mindfulness techniques, we'll work on developing functional strength, improving posture, and cultivating a strong mind-body connection.",
  #   sport: "Calisthenics",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Mindful Strength: Cultivate Inner Power and Resilience"
  # )

  # file = URI.open("https://www.vertimax.com/hubfs/aug2109/images/Agility%20Training%20Images/Agility%20Training%20Shuttle%20Run%20vertimax_011.jpg")
  # service36.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service36.save!
  # puts "Hi Service36"

  booking3 = Booking.create(
    user: user6,
    service: service4,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review3 = Review.create(
    booking: booking3,
    rating: 4,
    comment: "I appreciated the trainer's dedication to injury prevention. Their emphasis on proper form, warm-up routines, and cooldown exercises made me feel confident in my training and reduced the risk of injuries."
  )

  booking4 = Booking.create(
    user: user8,
    service: service5,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review4 = Review.create(
    booking: booking4,
    rating: 4,
    comment: "The trainer's positive reinforcement and constructive criticism helped me develop a growth mindset. I left the training session feeling empowered and ready to conquer new challenges."
  )

  booking5 = Booking.create(
    user: user10,
    service: service6,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review5 = Review.create(
    booking: booking5,
    rating: 5,
    comment: "I've attended several sports training sessions, but this one truly stood out. The trainer's passion, knowledge, and ability to connect with participants created a memorable and impactful experience."
  )

  trainer3 = Trainer.create(
    description: "Goal-oriented trainer who thrives on empowering individuals to surpass their limits. Combines a strategic approach with motivational coaching to enhance performance and foster long-term success.",
    sports: "Running,Swimming,Cycling",
    user: user5
  )

  service7 = Service.new(
    trainer: trainer3,
    address: "41 Quaker Street, E16SN, London",
    price: 300,
    description: "Achieve a balance between strength, endurance, and recovery with our meticulously designed week-long training plan. Our trainers will guide you through a well-rounded schedule, combining challenging workouts, cross-training activities, and rest days to optimize your performance and prevent burnout.",
    sport: "Running",
    service_type: "Training Plan",
    duration: 2,
    title: "Balanced Running Training Week"
  )

  file = URI.open("https://static.showit.co/800/p7J-VkiHSzy_TJFABEl67w/164038/dale_erdmier_4thmar22.jpg")
  service7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service7.save!
  puts "Hi Service7"

  service8 = Service.new(
    trainer: trainer3,
    address: "41 Quaker Street, E16SN, London",
    price: 12,
    description: "Get ready for a euphoric running/cycling session focused on building endurance and releasing those feel-good endorphins. With a personal trainer leading the way, you'll enjoy a 1-hour session filled with energy and motivation.",
    sport: "Swimming",
    service_type: "Session",
    duration: 1,
    title: "Endurance Endorphins"
  )

  file = URI.open("https://blog.fitbit.com/wp-content/uploads/2018/08/0816-summer-workouts-HERO.jpg")
  service8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service8.save!
  puts "Hi Service8"

  service9 = Service.new(
    trainer: trainer3,
    address: "41 Quaker Street, E16SN, London",
    price: 12,
    description: "Elevate your running/cycling performance to new heights with this comprehensive 2-hour training session. Our personal trainer will analyze your form, provide valuable feedback, and implement strategies to optimize your performance.",
    sport: "Cycling",
    service_type: "Session",
    duration: 2,
    title: "Performance Enhancement Intensive"
  )

  file = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/211101161141-01-how-to-have-fun-working-out.jpg?q=w_3000,h_2000,x_0,y_0,c_fill")
  service9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service9.save!
  puts "Hi Service9"

  # service37 = Service.new(
  #   trainer: trainer3,
  #   address: "London",
  #   price: 35,
  #   description: "Ignite your athletic potential with a high-intensity training session designed to push your limits and unlock your inner strength. Join me for an energizing workout that combines explosive exercises, cardio intervals, and strength training, leaving you feeling empowered and accomplished.",
  #   sport: "",
  #   service_type: "Session",
  #   duration: 2,
  #   title: "Power Ignite: Unleash Your Inner Strength"
  # )

  # file = URI.open("https://images.ctfassets.net/8urtyqugdt2l/3D2iE8CWiIZ8ZnZ1ZGCjWJ/97aaba852f17eb10e65b8aceeb63acad/1594309624-how-to-start-working-out-again-header.jpg")
  # service37.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service37.save!
  # puts "Hi Service37"

  booking6 = Booking.create(
    user: user12,
    service: service7,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review6 = Review.create(
    booking: booking6,
    rating: 4,
    comment: "The training session was incredibly insightful. The trainer's deep understanding of sports mechanics and their ability to communicate complex concepts in a simplified manner were remarkable."
  )

  booking7 = Booking.create(
    user: user14,
    service: service8,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review7 = Review.create(
    booking: booking7,
    rating: 4,
    comment: "I felt challenged, supported, and motivated throughout the entire training session. The trainer's ability to adapt to different skill levels and provide constructive feedback was impressive."
  )

  booking8 = Booking.create(
    user: user16,
    service: service9,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review8 = Review.create(
    booking: booking8,
    rating: 4,
    comment: "The sports training session exceeded my expectations. The trainer's expertise, coupled with their ability to provide individualized attention, ensured I got the most out of every minute."
  )

  trainer4 = Trainer.create(
    description: "I am a passionate trainer with a deep understanding of biomechanics and exercise physiology. Skilled at tailoring training plans to address specific needs and helping clients reach their peak performance levels.",
    sports: "Running,Climbing,Tennis",
    user: user7
  )

  service10 = Service.new(
    trainer: trainer4,
    address: "79 Naylor Road, SE151QJ, London",
    price: 288,
    description: "Get ready to elevate your performance with our dynamic week-long training plan. Designed for ambitious athletes, this program includes intense interval training, time trials, and targeted strength exercises, ensuring you reach peak performance by the end of the week.",
    sport: "Running",
    service_type: "Training Plan",
    duration: 2,
    title: "Performance-Driven Week of Running Training"
  )

  file = URI.open("https://images.squarespace-cdn.com/content/v1/5ebfd2ce19eb48129f382e27/1596992029599-ZJ844T63G1VSQ3LRGE9U/_MG_3309.jpg?format=1000w")
  service10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service10.save!
  puts "Hi Service10"

  service11 = Service.new(
    trainer: trainer4,
    address: "79 Naylor Road, SE151QJ, London",
    price: 30,
    description: "Ignite your cycling potential with this high-intensity interval training session. Led by a personal trainer, you'll experience a 2-hour session that alternates between intense bursts of effort and active recovery.",
    sport: "Climbing",
    service_type: "Session",
    duration: 3,
    title: "Interval Power Ride"
  )

  file = URI.open("https://hips.hearstapps.com/hmg-prod/images/cheerful-women-doing-push-ups-on-retaining-wall-at-royalty-free-image-1649095460.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*")
  service11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service11.save!
  puts "Hi Service11"

  service12 = Service.new(
    trainer: trainer4,
    address: "79 Naylor Road, SE151QJ, London",
    price: 22,
    description: "Lay a solid foundation for your running/cycling goals with this 1.5-hour endurance-focused training session. Under the guidance of a personal trainer, you'll work on building strength, stamina, and mental resilience.",
    sport: "Tennis",
    service_type: "Session",
    duration: 2,
    title: "Endurance Base Building"
  )

  file = URI.open("https://www.wellandgood.com/wp-content/uploads/2021/08/GettyImages-1316198696-425x285.jpg")
  service12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  service12.save!
  puts "Hi Service12"

  booking9 = Booking.create(
    user: user4,
    service: service12,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review9 = Review.create(
    booking: booking9,
    rating: 4,
    comment: "The training session was exactly what I needed to overcome my plateau. The trainer's creative exercises and innovative training methods helped me break through my limits."
  )

  booking10 = Booking.create(
    user: user4,
    service: service10,
    status: 0,
    start_time: date,
    end_time: date + time
  )

  review10 = Review.create(
    booking: booking10,
    rating: 4,
    comment: "The trainer's passion for the sport was contagious. Their energy and commitment motivated me to push myself harder and strive for continuous improvement."
  )

  trainer5 = Trainer.create(
    description: "Results-driven trainer experienced in working with diverse populations, from beginners to elite athletes. Utilizes a comprehensive approach to training, incorporating strength, endurance, and injury prevention techniques.",
    sports: "Running,Cycling,Kayaking",
    user: user9
  )

  # service13 = Service.new(
  #   trainer: trainer5,
  #   address: "London",
  #   price: 500,
  #   description: "Progressive Running Week: Progress steadily towards your running/cycling goals with our progressive week-long training plan. Starting with moderate intensity and gradually increasing the challenges, this program incorporates different types of workouts to improve your endurance, speed, and overall fitness level over the course of the week.",
  #   sport: "Running",
  #   service_type: "Training Plan"
  # )

  # file = URI.open("https://www.lk-fitness.co.uk/wp-content/uploads/Lee-PT-164-scaled.jpg")
  # service13.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service13.save!
  # puts "Hi Service13"

  # service14 = Service.new(
  #   trainer: trainer5,
  #   address: "London",
  #   price: 35,

  #   description: "Tempo Training Challenge: Fine-tune your pace and rhythm in this challenging running/cycling session. With a personal trainer, you'll engage in a 3-hour workout that combines steady-state efforts and intervals to enhance your overall performance.",
  #   sport: "Cycling",
  #   service_type: "Session"
  # )

  # file = URI.open("https://bloximages.newyork1.vip.townnews.com/waaytv.com/content/tncms/assets/v3/editorial/f/c3/fc39c7a3-6678-53cc-9e89-960105a66d44/61d7236727a7e.image.jpg?crop=1763%2C926%2C0%2C125&resize=1200%2C630&order=crop%2Cresize")
  # service14.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service14.save!
  # puts "Hi Service14"

  # service15 = Service.new(
  #   trainer: trainer5,
  #   address: "London",
  #   price: 50,
  #   description: "Adventure Trail Ride: Embark on an exhilarating trail cycling adventure with a personal trainer as your guide. This 2-hour session will take you through scenic trails, testing your skills and endurance in a thrilling outdoor experience.",
  #   sport: "Kayaking",
  #   service_type: "Session"
  # )

  # file = URI.open("https://www.simplysupplements.co.uk/healthylife/uploads/images/image_mid_677_5d6688fd5e650.jpg")
  # service15.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service15.save!
  # puts "Hi Service15"

  # booking11 = Booking.create(
  #   user: user22,
  #   service: service13,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review11 = Review.create(
  #   booking: booking11,
  #   rating: 4,
  #   comment: "I highly recommend the sports training session to anyone looking to improve their skills. The trainer's patience, dedication, and ability to break down complex movements were impressive."
  # )

  # booking12 = Booking.create(
  #   user: user22,
  #   service: service14,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review12 = Review.create(
  #   booking: booking12,
  #   rating: 4,
  #   comment: "The training session was well-organized, with a perfect balance of theory and practical drills. The trainer's clear explanations and demonstrations made it easy to grasp new concepts."
  # )

  # booking13 = Booking.create(
  #   user: user22,
  #   service: service15,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review13 = Review.create(
  #   booking: booking13,
  #   rating: 5,
  #   comment: "I've participated in various sports training sessions, but this one stood out. The trainer's enthusiasm and expertise created an inspiring atmosphere, making the session both educational and fun."
  # )

  trainer6 = Trainer.create(
    description: "Energetic and knowledgeable trainer adept at creating dynamic and engaging workout sessions. Possesses strong communication skills to effectively guide and inspire clients towards their desired results.",
    sports: "Running,Kayaking,Cycling",
    user: user11
  )

  # service16 = Service.new(
  #   trainer: trainer6,
  #   address: "London",
  #   price: 12,
  #   description: "Ultra-Distance Preparation: Prepare for long-distance running/cycling events with this 2-hour training session. Our personal trainer will provide guidance on pacing, fueling strategies, and mental preparation to ensure you're ready for the ultimate endurance challenge.",
  #   sport: "Running",
  #   service_type: "Session"
  # )

  # file = URI.open("https://media1.popsugar-assets.com/files/thumbor/nFMJa75Ys1sVMzJkvE3hzPffzWg/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2015/05/07/733/n/1922729/e3698b65_edit_img_image_845239_1431009170/i/Hill-Strength-Training-Workout.png")
  # service16.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service16.save!
  # puts "Hi Service16"

  # booking14 = Booking.create(
  #   user: user2,
  #   service: service16,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review14 = Review.create(
  #   booking: booking14,
  #   rating: 4,
  #   comment: "The training session was challenging yet enjoyable. The trainer created a supportive environment that pushed me beyond my comfort zone and helped me exceed my own expectations."
  # )

  trainer7 = Trainer.create(
    description: "Innovative trainer with a creative approach to training methodologies. Implements cutting-edge techniques and incorporates technology-driven tools to enhance performance tracking and analysis for clients seeking the latest advancements in their training routines.",
    sports: "Kayaking",
    user: user13
  )

  # service17 = Service.new(
  #   trainer: trainer7,
  #   address: "London",
  #   price: 12,
  #   description: "Power Hills and Sprints: Conquer hills and unleash your speed in this dynamic running/cycling session. With a personal trainer leading the way, you'll tackle challenging inclines and engage in exhilarating sprints during this 2-hour workout.",
  #   sport: "Cycling",
  #   service_type: "Session"
  # )

  # file = URI.open("https://www.eatthis.com/wp-content/uploads/sites/4/2023/04/woman-bird-dogs.jpg?quality=82&strip=all")
  # service17.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service17.save!
  # puts "Hi Service17"

  # booking15 = Booking.create(
  #   user: user4,
  #   service: service17,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review15 = Review.create(
  #   booking: booking15,
  #   rating: 5,
  #   comment: "I'm grateful for the knowledgeable trainer who conducted the session. They provided valuable insights, tips, and techniques that have elevated my game to a whole new level."
  # )

  trainer8 = Trainer.create(
    description: "Dedicated trainer with a proven track record of improving performance and technique. Well-versed in utilizing advanced training methodologies and offering valuable insights to optimize training routines.",
    sports: "Running",
    user: user15
  )

  # service18 = Service.new(
  #   trainer: trainer8,
  #   address: "Londo",
  #   price: 12,
  #   description: "Mindful Endurance Journey: Embark on a mindful and meditative running/cycling session with a personal trainer. This 3-hour session will focus on finding a balance between physical exertion and mental clarity, allowing you to connect with your body and surroundings.",
  #   sport: "Running",
  #   service_type: "Session"
  # )

  # file = URI.open("https://images.huffingtonpost.com/2015-07-27-1438037178-3176987-SweatyAngelC.jpg")
  # service18.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service18.save!
  # puts "Hi Service18"

  # booking16 = Booking.create(
  #   user: user4,
  #   service: service18,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review16 = Review.create(
  #   booking: booking16,
  #   rating: 4,
  #   comment: "The sports training session was intense but incredibly rewarding. The trainer's attention to detail and personalized feedback helped me make significant improvements. Definitely worth it!"
  # )

  trainer9 = Trainer.create(
    description: "I am an experienced trainer with a passion for helping individuals achieve their fitness goals. Skilled in designing personalized training programs and providing motivation for clients of all levels.",
    sports: "Running",
    user: user17
  )

  # service19 = Service.new(
  #   trainer: trainer9,
  #   address: "Brighton",
  #   price: 20,
  #   description: "Strength and Stamina Fusion: Combine strength training and endurance work in this 1.5-hour running/cycling session led by a personal trainer. You'll engage in a variety of exercises and drills to build both muscular strength and cardiovascular endurance.",
  #   sport: "Running",
  #   service_type: "Session"
  # )

  # file = URI.open("https://media.self.com/photos/60e76fe01f69d35150b50014/4:3/w_2560%2Cc_limit/GettyImages-1254996115.jpg")
  # service19.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service19.save!
  # puts "Hi Service19"

  # booking17 = Booking.create(
  #   user: user6,
  #   service: service19,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review17 = Review.create(
  #   booking: booking17,
  #   rating: 4,
  #   comment: "I had an amazing experience in the training session. The trainer's motivational and positive approach kept me focused and determined throughout. Can't wait for the next session!"
  # )

  trainer10 = Trainer.create(
    description: "Personable and empathetic trainer who understands the unique challenges individuals face on their fitness journey. Skilled in building strong relationships with clients and providing unwavering support to help them overcome obstacles and achieve their goals.",
    sports: "Kayaking",
    user: user19
  )

  # service20 = Service.new(
  #   trainer: trainer10,
  #   address: "Brighton",
  #   price: 30,
  #   description: "Performance Optimization Clinic: Fine-tune your running/cycling performance with this 2-hour session designed to optimize your technique, pacing, and race strategy. Our experienced personal trainer will provide personalized guidance and support to help you reach your goals.",
  #   sport: "Kayaking",
  #   service_type: "Session"
  # )

  # file = URI.open("https://img.livestrong.com/640/clsd/getty/1b4092b2fc4a47119f1def88e6e94b33.jpg")
  # service20.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service20.save!
  # puts "Hi Service20"

  # booking18 = Booking.create(
  #   user: user8,
  #   service: service20,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review18 = Review.create(
  #   booking: booking18,
  #   rating: 4,
  #   comment: "The sports training session was well-structured and tailored to my specific needs. The trainer's expertise and guidance significantly improved my technique and performance."
  # )

  trainer11 = Trainer.create(
    description: "Well-rounded trainer experienced in multi-disciplinary training methods. Combines elements of strength training, cardio conditioning, and flexibility work to create well-rounded and comprehensive training programs tailored to individual needs.",
    sports: "Cycling",
    user: user21
  )

  # service21 = Service.new(
  #   trainer: trainer11,
  #   address: "Brighton",
  #   price: 30,
  #   description: "Adventure Cycling Expedition: Embark on an unforgettable cycling adventure with a personal trainer leading the way. This 2-hour session will take you on a scenic route, allowing you to explore new landscapes and challenge",
  #   sport: "Cycling",
  #   service_type: "Session"
  # )

  # file = URI.open("https://i0.wp.com/post.healthline.com/wp-content/uploads/2019/11/muslim-poc-gym-exercising-weight-lifting-1296x728-header.jpg?h=1528")
  # service21.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  # service21.save!
  # puts "Hi Service21"

  # booking19 = Booking.create(
  #   user: user10,
  #   service: service21,
  #   status: 0,
  #   start_time: date,
  #   end_time: date + time
  # )

  # review19 = Review.create(
  #   booking: booking19,
  #   rating: 5,
  #   comment: "The training session was exceptional! The trainer pushed me to my limits and helped me achieve a new personal best. Highly recommend!"
  # )
