# This file should contain all the record creation needed to seed the
#database with its default values. # The data can then be loaded with
#the rails db:seed command (or created alongside the database with
#db:setup). # # Examples: # #   movies = Movie.create([{ name: 'Star
#Wars' }, { name: 'Lord of the Rings' }]) #   Character.create(name:
#'Luke', movie: movies.first)

#Campaign.destroy_all
#User.destroy_all

require 'json'
require 'open-uri'


puts 'Seed is coming...'

puts 'Delete old data'

ActsAsTaggableOn::Tag.destroy_all
InfluencerTag.destroy_all
Metric.destroy_all
CampaignInfluencer.destroy_all
Influencer.destroy_all
Campaign.destroy_all
User.destroy_all


AGES = ["25-34", "18-24", "35-44"]
LOCATIONS = ["France", "Espagne", "Italie", "Belgique", "Portugal", "Angleterre"]
SIZES = ["100", "1500", "5500", "10500", "50500", "100500", "500500", "1000500"]
MEDIAS = ["Instagram", "Facebook", "Pinterest", "Twitter"]

puts 'Creating User...'
user_01 = User.new(name: "Cyrille", email: "cyrille@decathlon.com", password: "helloo")
user_01.save!

user_02 = User.new(name: "Ken", email: "ken@decathlon.com", password: "helloo")
user_02.save!

user_03 = User.new(name: "Laura", email: "lau@decathlon.com", password: "helloo")
user_03.save!

puts 'Creating Campaign...'

campaign_01 = Campaign.new(name: "Cravache Time", user_id: user_01.id, starts_at: Date.new(2020,03,02), ends_at: Date.new(2020,02,03), goal: Campaign::GOALS.sample, target: "18-24ans", message: "acheteSIZES mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_01.save!

campaign_02 = Campaign.new(name: "Chez Gladines", user_id: user_02.id,
starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: Campaign::GOALS.sample, target: "18-24ans", message: "achetez mes cravaches", hashtag:
["#sm", "#fiftyshadesofgrey"])
campaign_02.save!

campaign_03 = Campaign.new(name: "Voyages", user_id: user_03.id, starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: Campaign::GOALS.sample, target: "18-24ans", message: "achetez mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_03.save!


puts 'Creating Influencer1...'

influencer_01 =   Influencer.create!(name: "lolo",
                  women_stats: 30,
                  men_stats: 70,
                  engagement_rate: "10,45%",
)


influencer_01.age_list.add(AGES.sample)

p 'Influencer1 created'

#                    flavor_list: flavors.sample)
influencer_01 = Influencer.create!(name: "Jean", women_stats: 30, men_stats: 70, engagement_rate: "10,45%")

puts 'Creating Influencer2...'

influencer_02 = Influencer.create!(name: "Michel", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample, women_stats: 55, men_stats: 45, engagement_rate: "9,45%", media_list: MEDIAS.sample)

puts 'Creating Influencer3...'
influencer_03 = Influencer.create!(name: "Patricia Ka", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample, women_stats: 80, men_stats: 20, engagement_rate: "8,45%", media_list: MEDIAS.sample)

puts 'Creating Influencer4...'

influencer_04 = Influencer.create!(name: "Jeremy ", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample, women_stats: 12, men_stats: 88, engagement_rate: "7,45%", media_list: MEDIAS.sample)

puts 'Creating Influencer5...'
influencer_05 = Influencer.create!(name: "Alice Rocher", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample,  women_stats: 76, men_stats: 24, engagement_rate: "6,45%", media_list: MEDIAS.sample)
puts 'Creating Influencer6...'
influencer_06 = Influencer.create!(name: "Eleanore Suez", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample , women_stats: 66, men_stats: 34, engagement_rate: "5,45%", media_list: MEDIAS.sample)
puts 'Creating Influencer7...'
influencer_07 = Influencer.create!(name: "Franck", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample , women_stats: 100, men_stats: 0, engagement_rate: "4,45%", media_list: MEDIAS.sample)
puts 'Creating Influencer8...'
influencer_08 = Influencer.create!(name: "Helene Roger", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIAS.sample)
puts 'Creating Influencer9...'
influencer_09 = Influencer.create!(name: "Mylene Dupont", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIAS.sample)
puts 'Creating Influencer10...'
influencer_10  = Influencer.create!(name: "Veronica Eliot", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list: SIZES.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIAS.sample)

p 'Creating Influencer11'
influencer_11 = Influencer.create!(name: "Jean Michel", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list:SIZES.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIAS.sample)
p 'now asaving'

p 'Creating Influencer12'
influencer_12 = Influencer.create!(name: "Jean Robert", location_list: LOCATIONS.sample, age_list:  AGES.sample, size_list: SIZES.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIAS.sample)

puts 'Creating Campaign_influencer...'
CampaignInfluencer.create(campaign: campaign_01, influencer: influencer_01)
# CampaignInfluencer.create(campaign: campaign_01, influencer: influencer_02)
# CampaignInfluencer.create(campaign: campaign_01, influencer: influencer_03)

# CampaignInfluencer.create(campaign: campaign_02, influencer: influencer_04)
# CampaignInfluencer.create(campaign: campaign_02, influencer: influencer_05)
# CampaignInfluencer.create(campaign: campaign_02, influencer: influencer_06)

# CampaignInfluencer.create(campaign: campaign_03, influencer: influencer_07)
# CampaignInfluencer.create(campaign: campaign_03, influencer: influencer_08)
# CampaignInfluencer.create(campaign: campaign_03, influencer: influencer_01)


# puts 'Creating Tag...'

# tag_01 = Tag.new(name: "foodporn", color: "red")
# tag_01.save!

# tag_02 = Tag.new(name: "style", color: "blue")
# tag_02.save!

# tag_03 = Tag.new(name: "love", color: "red")
# tag_03.save!

# tag_04 = Tag.new(name: "money", color: "green")
# tag_04.save!

# tag_05 = Tag.new(name: "life", color: "red")
# tag_05.save!

# tag_06 = Tag.new(name: "wallpaper", color: "red")
# tag_06.save!

# tag_07 = Tag.new(name: "phone", color: "red")
# tag_07.save!

# tag_08 = Tag.new(name: "brand", color: "yellow")
# tag_08.save!

# puts 'Creating Influencer_tag...'

# InfluencerTag.create(influencer: influencer_01, tag: tag_01)
# InfluencerTag.create(influencer: influencer_01, tag: tag_02)
# InfluencerTag.create(influencer: influencer_01, tag: tag_03)

# InfluencerTag.create(influencer: influencer_02, tag: tag_04)
# InfluencerTag.create(influencer: influencer_02, tag: tag_05)
# InfluencerTag.create(influencer: influencer_02, tag: tag_06)

# InfluencerTag.create(influencer: influencer_03, tag: tag_07)
# InfluencerTag.create(influencer: influencer_03, tag: tag_08)
# InfluencerTag.create(influencer: influencer_03, tag: tag_01)

# InfluencerTag.create(influencer: influencer_04, tag: tag_01)
# InfluencerTag.create(influencer: influencer_04, tag: tag_02)
# InfluencerTag.create(influencer: influencer_04, tag: tag_03)

# InfluencerTag.create(influencer: influencer_05, tag: tag_04)
# InfluencerTag.create(influencer: influencer_05, tag: tag_05)
# InfluencerTag.create(influencer: influencer_05, tag: tag_06)

# InfluencerTag.create(influencer: influencer_06, tag: tag_07)
# InfluencerTag.create(influencer: influencer_06, tag: tag_08)
# InfluencerTag.create(influencer: influencer_06, tag: tag_01)

# InfluencerTag.create(influencer: influencer_07, tag: tag_01)
# InfluencerTag.create(influencer: influencer_07, tag: tag_02)
# InfluencerTag.create(influencer: influencer_07, tag: tag_03)

# InfluencerTag.create(influencer: influencer_08, tag: tag_04)
# InfluencerTag.create(influencer: influencer_08, tag: tag_05)
# InfluencerTag.create(influencer: influencer_08, tag: tag_06)


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
  campaign_id: Campaign.first.id,
  influencer_id: Influencer.first.id
)
end


puts 'Seed is Finished!'
