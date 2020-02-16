# This file should contain all the record creation needed to seed the
#database with its default values. # The data can then be loaded with
#the rails db:seed command (or created alongside the database with
#db:setup). # # Examples: # #   movies = Movie.create([{ name: 'Star
#Wars' }, { name: 'Lord of the Rings' }]) #   Character.create(name:
#'Luke', movie: movies.first)

#Campaign.destroy_all
#User.destroy_all

puts 'Seed is coming...'

puts 'Delete old data'

InfluencerTag.destroy_all
Tag.destroy_all
Metric.destroy_all
CampaignInfluencer.destroy_all
Influencer.destroy_all
Campaign.destroy_all
User.destroy_all

puts 'Creating User...'
user_01 = User.new(name: "Cyrille", email: "cyrille@decathlon.com", password: "helloo")
user_01.save!

user_02 = User.new(name: "Ken", email: "ken@decathlon.com", password: "helloo")
user_02.save!

user_03 = User.new(name: "Laura", email: "lau@decathlon.com", password: "helloo")
user_03.save!


puts 'Creating Campaign...'

campaign_01 = Campaign.new(name: "Cravache Time", user_id: user_01.id, starts_at: Date.new(2020,03,02), ends_at: Date.new(2020,02,03), goal: Campaign::GOALS.sample, target: "18-24ans", message: "achetez mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_01.save!

campaign_02 = Campaign.new(name: "Chez Gladines", user_id: user_02.id,
starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: Campaign::GOALS.sample, target: "18-24ans", message: "achetez mes cravaches", hashtag:
["#sm", "#fiftyshadesofgrey"])
campaign_02.save!

campaign_03 = Campaign.new(name: "Voyages", user_id: user_03.id, starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: Campaign::GOALS.sample, target: "18-24ans", message: "achetez mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_03.save!


puts 'Creating Influencer...'
influencer_01 = Influencer.new(name: "Jean Michel", community_location: "France", community_age: "25-34", community_size: 100, women_stats: 30, men_stats: 70, engagement_rate: "10,45%", media: "facebook")
influencer_01.save!

influencer_02 = Influencer.new(name: "Michel Berger ", community_location: "Espagne", community_age: "18-24", community_size: 1500, women_stats: 55, men_stats: 45, engagement_rate: "9,45%", media: "facebook")
influencer_02.save!

influencer_03 = Influencer.new(name: "Patricia Ka", community_location: "Italie", community_age: "25-34", community_size: 5500, women_stats: 80, men_stats: 20, engagement_rate: "8,45%", media: "instagram")
influencer_03.save!

influencer_04 = Influencer.new(name: "Jeremy Legrand", community_location: "Belgique", community_age: "35-44", community_size: 10500, women_stats: 12, men_stats: 88, engagement_rate: "7,45%", media: "pinterest")
influencer_04.save!

influencer_05 = Influencer.new(name: "Alice Rocher", community_location: "France", community_age: "25-34", community_size: 50500, women_stats: 76, men_stats: 24, engagement_rate: "6,45%", media: "instagram")
influencer_05.save!

influencer_06 = Influencer.new(name: "Eleanore Suez", community_location: "Espagne", community_age: "18-24", community_size: 100500, women_stats: 66, men_stats: 34, engagement_rate: "5,45%", media: "twitter")
influencer_06.save!

influencer_07 = Influencer.new(name: "Franck Vaillant", community_location: "France", community_age: "25-34", community_size: 500500, women_stats: 100, men_stats: 0, engagement_rate: "4,45%", media: "instagram")
influencer_07.save!

influencer_08 = Influencer.new(name: "Helene Roger", community_location: "Suisse", community_age: "25-34", community_size: 1000500, women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media: "instagram")
influencer_08.save!

influencer_09 = Influencer.new(name: "Mylene Dupont", community_location: "Suisse", community_age: "25-34", community_size: 1000500, women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media: "instagram")
influencer_08.save!

influencer_1O = Influencer.new(name: "Veronica Eliot", community_location: "Belgique", community_age: "25-34", community_size: 1000500, women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media: "instagram")
influencer_08.save!

influencer_11 = Influencer.new(name: "Jean Michel", community_location: "France", community_age: "25-34", community_size: 1000500, women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media: "instagram")
influencer_08.save!

influencer_12 = Influencer.new(name: "Jean Robert", community_location: "France", community_age: "25-34", community_size: 1000500, women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media: "instagram")
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



puts 'Creating Tag...'

tag_01 = Tag.new(name: "foodporn", color: "red")
tag_01.save!

tag_02 = Tag.new(name: "style", color: "blue")
tag_02.save!

tag_03 = Tag.new(name: "love", color: "red")
tag_03.save!

tag_04 = Tag.new(name: "money", color: "green")
tag_04.save!

tag_05 = Tag.new(name: "life", color: "red")
tag_05.save!

tag_06 = Tag.new(name: "wallpaper", color: "red")
tag_06.save!

tag_07 = Tag.new(name: "phone", color: "red")
tag_07.save!

tag_08 = Tag.new(name: "brand", color: "yellow")
tag_08.save!

puts 'Creating Influencer_tag...'

InfluencerTag.create(influencer: influencer_01, tag: tag_01)
InfluencerTag.create(influencer: influencer_01, tag: tag_02)
InfluencerTag.create(influencer: influencer_01, tag: tag_03)

InfluencerTag.create(influencer: influencer_02, tag: tag_04)
InfluencerTag.create(influencer: influencer_02, tag: tag_05)
InfluencerTag.create(influencer: influencer_02, tag: tag_06)

InfluencerTag.create(influencer: influencer_03, tag: tag_07)
InfluencerTag.create(influencer: influencer_03, tag: tag_08)
InfluencerTag.create(influencer: influencer_03, tag: tag_01)

InfluencerTag.create(influencer: influencer_04, tag: tag_01)
InfluencerTag.create(influencer: influencer_04, tag: tag_02)
InfluencerTag.create(influencer: influencer_04, tag: tag_03)

InfluencerTag.create(influencer: influencer_05, tag: tag_04)
InfluencerTag.create(influencer: influencer_05, tag: tag_05)
InfluencerTag.create(influencer: influencer_05, tag: tag_06)

InfluencerTag.create(influencer: influencer_06, tag: tag_07)
InfluencerTag.create(influencer: influencer_06, tag: tag_08)
InfluencerTag.create(influencer: influencer_06, tag: tag_01)

InfluencerTag.create(influencer: influencer_07, tag: tag_01)
InfluencerTag.create(influencer: influencer_07, tag: tag_02)
InfluencerTag.create(influencer: influencer_07, tag: tag_03)

InfluencerTag.create(influencer: influencer_08, tag: tag_04)
InfluencerTag.create(influencer: influencer_08, tag: tag_05)
InfluencerTag.create(influencer: influencer_08, tag: tag_06)


puts 'Creating Metrics...'

require 'csv'
filepath = File.join(Rails.root, 'db', 'metrics_seed.csv')
csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
CSV.foreach(filepath, csv_options) do |row|
Metric.create!(
  post_date: row[0],
  social_media: row[1],
  media_type: row[2],
  hashtag: row[3],
  impression: row[4],
  click: row[5],
  comment: row[6],
  engagement: row [7],
  emv: row[8],
  campaign: Campaign.find(row[9].to_i),
  influencer: Influencer.find(row[10].to_i)
)
end


puts 'Seed is Finished!'
