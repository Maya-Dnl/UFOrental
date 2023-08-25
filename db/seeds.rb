require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user1 = User.create!(email: 'toto@user.com', encrypted_password: '******', username: 'toto')
# user2 = User.create!(email: 'titi@user.com', encrypted_password: abc567, username: 'titi')
puts "cleaning data base"
Booking.destroy_all
FlyingSaucer.destroy_all
User.destroy_all

puts "starting seed"

user10 = User.create!(
  email: "user10@example.com",
  password: "pass10",
  password_confirmation: "pass10",
  username: "example_user10"
)

user11 = User.create!(
  email: "user11@example.com",
  password: "pass11",
  password_confirmation: "pass11",
  username: "example_user11"
)

user12 = User.create!(
  email: "user12@example.com",
  password: "pass12",
  password_confirmation: "pass12",
  username: "example_user12"
)

flyingsaucer1 = FlyingSaucer.create!(
  brand: "UFO Corp",
  description: "Futuristic flying saucer",
  capacity: 2,
  planet: "Earth",
  price_by_day: 50.0,
  user: user10 # Associate the flying saucer with the user
)
flyingsaucer1.image.attach(
  io:  File.open(File.join(Rails.root, 'app/assets/images/flyingsaucer-rentals/flying-saucer-1.jpg')),
  filename: 'flying-saucer-1.jpg'
)

flyingsaucer2 = FlyingSaucer.create!(
  brand: "UFO Corp",
  description: "Futuristic flying saucer",
  capacity: 2,
  planet: "Earth",
  price_by_day: 50.0,
  user: user11 # Associate the flying saucer with the user
)
flyingsaucer2.image.attach(
  io:  File.open(File.join(Rails.root, 'app/assets/images/flyingsaucer-rentals/flying-saucer-2.jpg')),
  filename: 'flying-saucer-2.jpg'
)

flyingsaucer3 = FlyingSaucer.create!(
  brand: "Galactic Cruiser",
  description: "Speed through the galaxies",
  capacity: 1,
  planet: "Jupiter",
  price_by_day: 120.0,
  user: user12
)
flyingsaucer3.image.attach(
  io:  File.open(File.join(Rails.root, 'app/assets/images/flyingsaucer-rentals/flying-saucer-3.jpg')),
  filename: 'flying-saucer-3.jpg'
)

flyingsaucer4 = FlyingSaucer.create!(
  brand: "Celestial Voyager",
  description: "Experience zero-gravity adventures",
  capacity: 3,
  planet: "Saturn",
  price_by_day: 90.0,
  user: user11
)
flyingsaucer4.image.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/flyingsaucer-rentals/flying-saucer-4.jpg')),
  filename: 'flying-saucer-4.jpg'
)

flyingsaucer5 = FlyingSaucer.create!(
  brand: "Neptune Express",
  description: "Navigate the depths of Neptune",
  capacity: 2,
  planet: "Neptune",
  price_by_day: 55.0,
  user: user12
)
flyingsaucer5.image.attach(
  io:  File.open(File.join(Rails.root, 'app/assets/images/flyingsaucer-rentals/flying-saucer-5.jpg')),
  filename: 'flying-saucer-5.jpg'
)

# Create a booking associated with the user
booking1 = Booking.create!(
  start_booking: Date.today,
  end_booking: Date.tomorrow,
  booking_status: "pending",
  total_price: 100.0,
  user: user11, # Associate the booking with the user
  flying_saucer: flyingsaucer1
)


# Create a flying saucer associated with the user

# 10.times do
#   FlyingSaucer.create!(
#     brand: Faker::Company.name,
#     description: Faker::Lorem.sentence,
#     capacity: rand(1..5),
#     planet: Faker::Space.planet,
#     price_by_day: rand(100..500)
#   )
# end

# 10.times do
#   start_date = Faker::Date.between(from: 1.week.ago, to: 1.week.from_now)
#   Booking.create(
#     start_booking: start_date,
#     end_booking: start_date + rand(1..7).days,
#     booking_status: ["Pending", "Confirmed", "Canceled"].sample,
#     total_price: rand(100..1000)
#   )
# end
