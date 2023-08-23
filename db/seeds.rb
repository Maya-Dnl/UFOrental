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

user3 = User.create!(
  email: "user3@example.com",
  password: "password456",
  password_confirmation: "password456",
  username: "example_user3"
)

user4 = User.create!(
  email: "user4@example.com",
  password: "password789",
  password_confirmation: "password789",
  username: "example_user4"
)

flyingsaucer1 = FlyingSaucer.create!(
  brand: "UFO Corp",
  description: "Futuristic flying saucer",
  capacity: 2,
  planet: "Earth",
  price_by_day: 50.0,
  user: user3 # Associate the flying saucer with the user
)

# Create a booking associated with the user
booking1 = Booking.create!(
  start_booking: Date.today,
  end_booking: Date.tomorrow,
  booking_status: "pending",
  total_price: 100.0,
  user: user4, # Associate the booking with the user
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
