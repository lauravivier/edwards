# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campaign.destroy_all
User.destroy_all

puts 'Creating User'
cyrille = User.new(name: "Cyrille", email: "cyr@gmail.com", password: "helloo")
cyrille.save!

ken = User.new(name: "Ken", email: "ken@gmail.com", password: "helloo" )
ken.save!

laura = User.new(name: "Laura", email: "lau@gmail.com", password: "helloo" )
laura.save!

puts 'Creating Campaign...'
tour_d_argent = Campaign.new(name: "La Tour d'Argent", user_id: cyrille.id)
tour_d_argent.save!

chez_gladines = Campaign.new(name: "Chez Gladines", user_id: ken.id)
chez_gladines.save!

voyages = Campaign.new(name: "Voyages", user_id: laura.id)
voyages.save!



puts 'Finished!'
