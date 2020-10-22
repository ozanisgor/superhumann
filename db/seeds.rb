# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'date'

Review.destroy_all
User.destroy_all
Champion.destroy_all
Booking.destroy_all

puts "Cleaning user database..."
puts "Creating users..."
user1 = User.create(username: "username1", password: "123456", email: "email1@email.com")
user2 = User.create( username: "username2", password: "123456", email: "email2@email.com")
user3 = User.create( username: "username3", password: "123456", email: "email3@email.com")
user4 = User.create( username: "username4", password: "123456", email: "email4@email.com")

puts "Finished!"


puts "Cleaning champion database..."
puts "Creating champions..."

file = URI.open('https://i.cdn.newsbytesapp.com/images/110_11991580378536.jpg')
the_hulk = Champion.create(name: "The Hulk", universe: "Earth-616 - Prime Marvel Universe", description: "Immortality, Berserk Mode, Radiation Absorption, Shapeshifting, Super Strength", rate: 300, user: user1)
the_hulk.photo.attach(io: file, filename: 'hulk.jpg', content_type: 'image/jpg')
the_hulk.save

file2 = URI.open('https://upload.wikimedia.org/wikipedia/en/3/35/Supermanflying.png')
superman =  Champion.create( name: "Superman", universe: "Prime Earth - Prime DC Comics Universe", description: "Super Breath, Flight, Super Strength, Psionic Powers Super Speed", rate: 500, user: user2)
superman.photo.attach(io: file2, filename: 'superman.png', content_type: 'image/png')
superman.save

file3 = URI.open('https://mewallpaper.com/thumbnail/movies/6990-iron-man-armor-free-photo-wallpaper.jpg')
ironman =  Champion.create( name: "ironman", universe: "Earth-616 - Prime Marvel Universe", description: "Energy Beams, Flight, Power Suit, Hacking, Marksmanship", rate: 150, user: user3)
ironman.photo.attach(io: file3, filename: 'ironman.jpg', content_type: 'image/jpg')
ironman.save

file4 = URI.open('https://i.pinimg.com/originals/ed/09/57/ed0957e68e5354c7da72c3540fe99770.jpg')
thor = Champion.create(name: "Thor", universe: "Earth-616 - Prime Marvel Universe", description: "Godly Physiology, Portal Creation, Weapon-based Powers, Odin Force, Teleportation", rate: 200, user: user4)
thor.photo.attach(io: file4, filename: 'thor.jpg', content_type: 'image/jpg')
thor.save





puts "#{Champion.count} champions created"

puts "Cleaning booking database..."
puts "creating bookings ..."
10.times { booking = Booking.create(start_time:Date.parse('2001-02-03') , end_time:Date.parse('2001-02-03') , total_price: 554, user: user1, champion: the_hulk)}
puts "Finished!"

puts Booking.count

