# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating Campaign...'
tour_d_argent = Campaign.new(name: "La Tour d'Argent")
tour_d_argent.save!

chez_gladines = Campaign.new(name: "Chez Gladines")
chez_gladines.save!

voyages = Campaign.new(name: "Voyages")
voyages.save!

puts 'Creating User'
cyrille = User.new (name: "Cyrille")
cyrille.save!

ken = User.new (name: "Ken")
Ken.save!

laura = User.new (name: "Laura")
Laura.save!

puts 'Finished!'
