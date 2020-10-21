# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

puts "Cleaning user database..."
User.destroy_all
puts "Creating users..."
user1 = User.create(username: "username1", password: "123456", email: "email1@email.com")
user2 = User.create( username: "username2", password: "123456", email: "email2@email.com")

puts "Finished!"


puts "Cleaning shampion database..."
Champion.destroy_all
puts "Creating champions..."
the_hulk = Champion.create(name: "The Hulk", universe: "Earth-616 - Prime Marvel Universe", description: "Human-Radiation", rate: 10, user: user1)
superman =  Champion.create( name: "superman", universe: "Prime Earth - Prime DC Comics Universe", description: "Kryptonian", rate: 20, user: user2)

puts "Cleaning booking database..."
Booking.destroy_all
puts "creating bookings ..."
10.times { booking = Booking.create(start_time:Date.parse('2001-02-03') , end_time:Date.parse('2001-02-03') , total_price: 554, user: user1, champion: the_hulk)}
puts "Finished!"

puts Booking.count

