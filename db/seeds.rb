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
user1 = User.create(username: "ozanisgor", password: "123456", email: "email1@email.com")
user2 = User.create( username: "cagataysoyer", password: "123456", email: "email2@email.com")
user3 = User.create( username: "leena", password: "123456", email: "email3@email.com")
user4 = User.create( username: "username4", password: "123456", email: "email4@email.com")

puts "Finished!"


puts "Cleaning champion database..."
puts "Creating champions..."

file = URI.open('https://i.cdn.newsbytesapp.com/images/110_11991580378536.jpg')

the_hulk = Champion.create(name: "The Hulk", universe: "Earth-616 - Prime Marvel Universe", description: "Immortality, Berserk Mode, Radiation Absorption, Shapeshifting, Super Strength", rate: 300, address: "618 N Center St", user: user1)
the_hulk.photo.attach(io: file, filename: 'hulk.jpg', content_type: 'image/jpg')
the_hulk.save!

file2 = URI.open('https://i.pinimg.com/originals/de/45/c5/de45c51de2196cd860b93da0d66626e5.jpg')
superman =  Champion.create( name: "Superman", universe: "Prime Earth - Prime DC Comics Universe", description: "Super Breath, Flight, Super Strength, Psionic Powers Super Speed", rate: 500, address: "225 County Rd", user: user2)
superman.photo.attach(io: file2, filename: 'superman.jpg', content_type: 'image/jpg')
superman.save

file3 = URI.open('https://mewallpaper.com/thumbnail/movies/6990-iron-man-armor-free-photo-wallpaper.jpg')
ironman =  Champion.create( name: "Ironman", universe: "Earth-616 - Prime Marvel Universe", description: "Energy Beams, Flight, Power Suit, Hacking, Marksmanship", rate: 200, address: "211 N East St", user: user3)
ironman.photo.attach(io: file3, filename: 'ironman.jpg', content_type: 'image/jpg')
ironman.save!

file4 = URI.open('https://i.pinimg.com/originals/ed/09/57/ed0957e68e5354c7da72c3540fe99770.jpg')

thor = Champion.create(name: "Thor", universe: "Earth-616 - Prime Marvel Universe", description: "Godly Physiology, Portal Creation, Weapon-based Powers, Odin Force, Teleportation", rate: 200, address: "1636 Glassboro Rd", user: user4)
thor.photo.attach(io: file4, filename: 'thor.jpg', content_type: 'image/jpg')
thor.save!

file5 = URI.open('https://wallpaperaccess.com/full/496594.jpg')
spider_man = Champion.create(name: "Spider Man", universe: "Earth-616 - Prime Marvel Universe", description: "Wallcrawling, Danger Sense, Web Creation, Acrobatics, Agility", rate: 150, address: "8839 69th Road", user: user1)
spider_man.photo.attach(io: file5, filename: 'spider_man.jpg', content_type: 'image/jpg')
spider_man.save

file6 = URI.open('https://wallpaperskingdom.com/sites/default/files/batman-hd-wallpapers-32788-5310503.jpg')
batman = Champion.create(name: "Batman", universe: "Prime Earth - Prime DC Comics Universe", description: "Exceptional Martial Artist, Combat Strategy, Inexhaustible Wealth, Brilliant Deductive Skill, Advanced Technology", rate: 180, address: "batman park avm", user: user2)
batman.photo.attach(io: file6, filename: 'batman.jpg', content_type: 'image/jpg')
batman.save

file7 = URI.open('http://getwallpapers.com/wallpaper/full/0/b/9/629218.jpg')
joker =  Champion.create( name: "Joker", universe: "Prime Earth - Prime DC Comics Universe", description: "Complete Unpredictability, Chaos Agent, Customized Weapons, Wields Toxin Which Causes Victims to Die Laughing", rate: 90, address: "926 Dagger Spring Rd", user: user3)
joker.photo.attach(io: file7, filename: 'joker.jpg', content_type: 'image/jpg')
joker.save

file8 = URI.open('https://wallpaperaccess.com/full/167747.jpg')
wonder_woman =  Champion.create( name: "Wonder Woman", universe: "Prime Earth - Prime DC Comics Universe", description: "Super Strength, Invulnerability, Flight, Combat Skill, Combat Strategy, Superhuman Agility, Healing Factor, Magic Weaponry", rate: 200, address: "926 Dagger Spring Rd", user: user4)
wonder_woman.photo.attach(io: file8, filename: 'wonder_woman.jpg', content_type: 'image/jpg')
wonder_woman.save

file9 = URI.open('https://wallpaperplay.com/walls/full/6/2/6/145910.jpg')
illidan_stormrage =  Champion.create( name: "Illidan Stormrage", universe: "World of Warcraft", description: "Betrayer's Thirst, Sweeping Strike, Evasion, Metamorphosis, Demonic Form, Sixth Sense, Immolation", rate: 250, address: "122 Sherwood Dr", user: user1)
illidan_stormrage.photo.attach(io: file9, filename: 'illidan_Stormrage.jpg', content_type: 'image/jpg')
illidan_stormrage.save

file10 = URI.open('https://wallpaperaccess.com/full/1585203.jpg')
lich_king =  Champion.create( name: "The Lich King", universe: "World of Warcraft", description: "Frostmourne Hungers, Howling Blast, Frozen Tempest, Army of the Dead, Summon Sindragosa, Anit-Magic Shell", rate: 220, address: "214 Cricklewood Cir", user: user2)
lich_king.photo.attach(io: file10, filename: 'lich_king.jpg', content_type: 'image/jpg')
lich_king.save

file11 = URI.open('https://i.pinimg.com/originals/21/a7/7f/21a77fb7372be2b4bfcdfd00f0584106.jpg')
uther =  Champion.create( name: "Uther", universe: "World of Warcraft", description: "Devotion, Eternal Vanguard, Holy Light, Holy Radiance, Hammer of Justice, Flash of Light, Divine Shield, Guardian of Ancient Kings", rate: 230, address: "58 High Street, Nettleham", user: user3)
uther.photo.attach(io: file11, filename: 'uther.jpg', content_type: 'image/jpg')
uther.save

file12 = URI.open('https://www.pngitem.com/pimgs/m/42-422313_asterix-moustache-gaulois-asterix-idefix-hd-png-download.png')
asterix =  Champion.create( name: "Asterix", universe: "Ancient Rome", description: "Superhuman Strength, Superhuman Durability, Superhuman Speed, Superhuman Reflexes, Superhuman Agility, Superhuman Endurance, Superhuman Stamina, High Intelligence, Master Strategist, Expert Combatant", rate: 130, address: "Piazza del Duomo", user: user4)
asterix.photo.attach(io: file12, filename: 'asterix.png', content_type: 'image/png')
asterix.save

file13 = URI.open('https://wallpapercave.com/wp/wp2388365.jpg')
bulbasaur =  Champion.create( name: "Bulbasaur", universe: "Pokemon", description: "Magical Leaf, Solar Beam, Giga Drain, Leaf Storm, Body Slam, Seed Bomb", rate: 130, address: "72 Steade Road, Sheffield", user: user2)
bulbasaur.photo.attach(io: file13, filename: 'bulbasaur.jpg', content_type: 'image/jpg')
bulbasaur.save

file14 = URI.open('https://wallpapercave.com/wp/xrd9xuz.jpg')
charmender =  Champion.create( name: "Charmender", universe: "Pokemon", description: "Fire Spin, Fire Fang, Shadow Claw, Flamethrower, Overheat, Dragon Pulse", rate: 130, address: "The Park Cottage, Chinnor Road, Aston Rowant", user: user3)
charmender.photo.attach(io: file14, filename: 'charmender.jpg', content_type: 'image/jpg')
charmender.save

file15 = URI.open('https://wallpapercave.com/wp/G8CE8Gu.jpg')
squirtle =  Champion.create( name: "Squirtle", universe: "Pokemon", description: "Whirlpool, Hydro Pump, Surf, Waterfall, Blizzard, Body Slam", rate: 130, address: "5 The Pathway, Birmingham", user: user4)
squirtle.photo.attach(io: file15, filename: 'squirtle.jpg', content_type: 'image/jpg')
squirtle.save

file16 = URI.open('https://images.halloweencostumes.com/products/26923/2-1-98022/plus-size-authentic-darth-vader-costume9.jpg')
darth_vader =  Champion.create( name: "Darth Vader", universe: "Star Wars", description: "Berserk Mode, Body Puppetry, Darkforce Manipulation, Telekinesis, Telepathy, The Force", rate: 350, address: "Bissingzeile 43", user: user2)
darth_vader.photo.attach(io: file16, filename: 'darth_vader.jpg', content_type: 'image/jpg')
darth_vader.save

file17 = URI.open('https://wallpapercave.com/wp/wp3984493.jpg')
luke_skywalker =  Champion.create( name: "Luke Skywalker", universe: "Star Wars", description: "Astral Projection, Cloaking, Danger Sense, Force Fields, Illusions, Jump, Light Control", rate: 300, address: "Heinrich Heine Platz 91", user: user1)
luke_skywalker.photo.attach(io: file17, filename: 'luke_skywalker.jpg', content_type: 'image/jpg')
luke_skywalker.save

file18 = URI.open('https://wallpapercave.com/wp/wp2904092.jpg')
sherlock =  Champion.create( name: "Sherlock Holmes", universe: "Earth", description: "Enhanced Memory, Intelligence, Stamina, Enhanced Senses, Master Tactician, Endurance, Perfect Recollection, Stealth", rate: 500, address: "221B Baker Street", user: user1)
sherlock.photo.attach(io: file18, filename: 'sherlock.jpg', content_type: 'image/jpg')
sherlock.save

puts "#{Champion.count} champions created"


