require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(username: "toto")
user2 = User.create!(username: "titi")

10.times do
  FlyingSaucer.create!(
    brand: Faker::Company.name,
    description: Faker::Lorem.sentence,
    capacity: rand(1..5),
    planet: Faker::Space.planet,
    price_by_day: rand(100..500)
  )
end

# 10.times do
#   start_date = Faker::Date.between(from: 1.week.ago, to: 1.week.from_now)
#   Booking.create(
#     start_booking: start_date,
#     end_booking: start_date + rand(1..7).days,
#     booking_status: ["Pending", "Confirmed", "Canceled"].sample,
#     total_price: rand(100..1000)
#   )
# end
