# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Campaign.destroy_all
#User.destroy_all

puts 'Creating User'
user_01 = User.new(name: "Cyrille", email: "cyr@gmail.com", password: "helloo")
user_01.save!

user_02 = User.new(name: "Ken", email: "ken@gmail.com", password: "helloo")
user_02.save!

user_03 = User.new(name: "Laura", email: "lau@gmail.com", password: "helloo")
user_03.save!

puts 'Creating Campaign...'
campaign_01 = Campaign.new(name: "Cravache Time", user_id: user_01.id, starts_at: Date.new(2020,03,02), ends_at: Date.new(2020,02,03), goal: "gagner de l'argent", target: "18-24ans", message: "achetez mes cravaches", hashtag: "#sm #fiftyshadesofgrey")
campaign_01.save!

campaign_02 = Campaign.new(name: "Chez Gladines", user_id: user_02.id, starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: "gagner de l'argent", target: "18-24ans", message: "achetez mes cravaches", hashtag: "#sm #fiftyshadesofgrey")
campaign_02.save!

campaign_03 = Campaign.new(name: "Voyages", user_id: user_03.id, starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: "gagner de l'argent", target: "18-24ans", message: "achetez mes cravaches", hashtag: "#sm #fiftyshadesofgrey")
campaign_03.save!



puts 'Finished!'
