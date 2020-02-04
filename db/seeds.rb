# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Campaign.destroy_all
#User.destroy_all

puts 'Seed is coming...'

puts 'Creating User...'
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


puts 'Creating Influencer...'
influencer_01 = Influencer.new(name: "XXXXXXX1", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_01.save!

influencer_02 = Influencer.new(name: "XXXXXXX2", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_02.save!

influencer_03 = Influencer.new(name: "XXXXXXX3", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_03.save!

influencer_04 = Influencer.new(name: "XXXXXXX4", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_04.save!

influencer_05 = Influencer.new(name: "XXXXXXX5", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_05.save!

influencer_06 = Influencer.new(name: "XXXXXXX6", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_06.save!

influencer_07 = Influencer.new(name: "XXXXXXX7", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_07.save!

influencer_08 = Influencer.new(name: "XXXXXXX8", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_08.save!


puts 'Creating Campaign_influencer...'
CampaignInfluencer.create(campaign: campaign_01, influencer: influencer_01)
CampaignInfluencer.create(campaign: campaign_01, influencer: influencer_02)
CampaignInfluencer.create(campaign: campaign_01, influencer: influencer_03)

CampaignInfluencer.create(campaign: campaign_02, influencer: influencer_04)
CampaignInfluencer.create(campaign: campaign_02, influencer: influencer_05)
CampaignInfluencer.create(campaign: campaign_02, influencer: influencer_06)

CampaignInfluencer.create(campaign: campaign_03, influencer: influencer_07)
CampaignInfluencer.create(campaign: campaign_03, influencer: influencer_08)
CampaignInfluencer.create(campaign: campaign_03, influencer: influencer_01)

puts 'Seed is Finished!'
