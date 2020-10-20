# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Champion.destroy_all
puts "Creating superheroes..."
the_hulk = { name: "The Hulk", universe: "Earth-616 - Prime Marvel Universe", description: "Human-Radiation" }
superman =  { name: "superman", universe: "Prime Earth - Prime DC Comics Universe", description: "Kryptonian" }
[ the_hulk, superman ].each do |attributes|
  champion = Champion.create!(attributes)
  puts "Created #{champion.name}"
end
puts "Finished!"