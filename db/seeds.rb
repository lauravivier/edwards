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

puts 'Detele old data'
CampaignInfluencer.destroy_all
InfluencerTag.destroy_all
Influencer.destroy_all
Campaign.destroy_all
Tag.destroy_all
User.destroy_all


puts 'Creating User...'
user_01 = User.new(name: "Cyrille", email: "cyrille@gmail.com", password: "helloo")
user_01.save!

user_02 = User.new(name: "Ken", email: "ken@gmail.com", password: "helloo")
user_02.save!

user_03 = User.new(name: "Laura", email: "lau@gmail.com", password: "helloo")
user_03.save!


puts 'Creating Campaign...'
campaign_01 = Campaign.new(name: "Cravache Time", user_id: user_01.id, starts_at: Date.new(2020,03,02), ends_at: Date.new(2020,02,03), goal: "Accroître l'engagement", target: "18-24ans", message: "achetez mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_01.save!

campaign_02 = Campaign.new(name: "Chez Gladines", user_id: user_02.id, starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: "Accroître l'engagement", target: "18-24ans", message: "achetez mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_02.save!

campaign_03 = Campaign.new(name: "Voyages", user_id: user_03.id, starts_at: Date.new(2020,02,02), ends_at: Date.new(2020,02,03), goal: "Accroître l'engagement", target: "18-24ans", message: "achetez mes cravaches", hashtag: ["#sm", "#fiftyshadesofgrey"])
campaign_03.save!


puts 'Creating Influencer...'
influencer_01 = Influencer.new(name: "XXXXXXX1", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_01.save!

influencer_02 = Influencer.new(name: "XXXXXXX2", community_location: "Espagne", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "facebook")
influencer_02.save!

influencer_03 = Influencer.new(name: "XXXXXXX3", community_location: "Italie", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_03.save!

influencer_04 = Influencer.new(name: "XXXXXXX4", community_location: "Belgique", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "pinterest")
influencer_04.save!

influencer_05 = Influencer.new(name: "XXXXXXX5", community_location: "France", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_05.save!

influencer_06 = Influencer.new(name: "XXXXXXX6", community_location: "Espagne", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "twitter")
influencer_06.save!

influencer_07 = Influencer.new(name: "XXXXXXX7", community_location: "Italie", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
influencer_07.save!

influencer_08 = Influencer.new(name: "XXXXXXX8", community_location: "Belgique", community_age: "18-24", community_size: 452032, women_stats: 44, men_stats: 56, engagement_rate: "2,45%", media: "instagram")
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
tag_01 = Tag.new(name: "foodporn")
tag_01.save!

tag_02 = Tag.new(name: "style")
tag_02.save!

tag_03 = Tag.new(name: "love")
tag_03.save!

tag_04 = Tag.new(name: "money")
tag_04.save!

tag_05 = Tag.new(name: "life")
tag_05.save!

tag_06 = Tag.new(name: "wallpaper")
tag_06.save!

tag_07 = Tag.new(name: "phone")
tag_07.save!

tag_08 = Tag.new(name: "brand")
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

puts 'Creating Influencer_data...'

metric = Metric.create(company: company, user: User.first, format: 'csv', submission_date: Date.today, source: 'Arval')

require 'csv'
filepath = File.join(Rails.root, 'db', 'metrics_seed.csv')
csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
CSV.foreach(filepath, csv_options) do |row|
  # Here, row is an array of columns

  Metric.create!
  (entity: row[0],
    department: row[9],
    traveller_first_name: first_name,
    traveller_last_name: last_name,
    traveller_email: "#{last_name}@heineken.com",
    amount: row[7],
    reservation_mode: row[8],
    supplier: row[10],
    transaction_type: row[5],
    report: report
  )

  t.date :post_date
      t.string :social_media
      t.string :media_type
      t.string :hashtag
      t.integer :impression
      t.integer :click
      t.integer :like
      t.integer :comment
      t.float :engagement
      t.float :emv
end

puts 'Seed is Finished!'
