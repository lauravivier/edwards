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


AGE =[25-34, 18-24, 35-44]
LOCATION = ["France", "Espagne", "Italie", "Belgique", "Portugal", "Angleterre"]
SIZE = [100, 1500, 5500, 10500, 50500, 100500, 500500, 1000500]
MEDIA = ["Instagram", "Facebook", "Pinterest", "Twitter"]
puts 'Seed is coming...'

puts 'Delete old data'

InfluencerTag.destroy_all
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


puts 'Creating Influencer01...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379354/Influencers/Jean_Michel_y4usdq.png')
influencer_01 = Influencer.new(name: "Jean Michel", location_list: LOCATION.sample, age_list: AGE.sample, size_list: SIZE.sample, women_stats: 30, men_stats: 70, engagement_rate: "10,45%", media_list: MEDIA.sample)
influencer_01.photo.attach(io: file, filename: 'Jean_Michel_y4usdq.png', content_type: 'image/png')
influencer_01.save!

puts 'Creating Influencer02...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379706/Influencers/Michel_Berger_i9leqo.png')
influencer_02 = Influencer.new(name: "Michel Berger", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample, women_stats: 55, men_stats: 45, engagement_rate: "9,45%", media_list: MEDIA.sample)
influencer_02.photo.attach(io: file, filename: 'Michel_Berger_i9leqo.png', content_type: 'image/png')
influencer_02.save!

puts 'Creating Influencer03...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380121/Influencers/Patricia_Ka_yiotqa.png')
influencer_03 = Influencer.new(name: "Patricia Ka", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample, women_stats: 80, men_stats: 20, engagement_rate: "8,45%", media_list: MEDIA.sample)
influencer_03.photo.attach(io: file, filename: 'Patricia_Ka_yiotqa.png', content_type: 'image/png')
influencer_03.save!

puts 'Creating Influencer04...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380538/Influencers/Jeremy_Legrand_y4nffz.png')
influencer_04 = Influencer.new(name: "Jeremy Legrand", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample, women_stats: 12, men_stats: 88, engagement_rate: "7,45%", media_list: MEDIA.sample)
influencer_04.photo.attach(io: file, filename: 'Jeremy_Legrand_y4nffz.png', content_type: 'image/png')
influencer_04.save!

puts 'Creating Influencer05...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379355/Influencers/Alice_Rocher_qz3aaa.png')
influencer_05 = Influencer.new(name: "Alice Rocher", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample,  women_stats: 76, men_stats: 24, engagement_rate: "6,45%", media_list: MEDIA.sample)
influencer_05.photo.attach(io: file, filename: 'Alice_Rocher_qz3aaa.png', content_type: 'image/png')
influencer_05.save!

puts 'Creating Influencer06...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380049/Influencers/Eleanore_Suez_bzrkxp.png')
influencer_06 = Influencer.new(name: "Eleanore Suez", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample , women_stats: 66, men_stats: 34, engagement_rate: "5,45%", media_list: MEDIA.sample)
influencer_06.photo.attach(io: file, filename: 'Eleanore_Suez_bzrkxp.png', content_type: 'image/png')
influencer_06.save!

puts 'Creating Influencer07...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380049/Influencers/Marine_Pain_lxeudc.png')
influencer_07 = Influencer.new(name: "Marine Pain", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample , women_stats: 100, men_stats: 0, engagement_rate: "4,45%", media_list: MEDIA.sample)
influencer_07.photo.attach(io: file, filename: 'Marine_Pain_lxeudc.png', content_type: 'image/png')

influencer_07.save!

puts 'Creating Influencer08...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379354/Influencers/Helene_Roger_lseqb7.png')
influencer_08 = Influencer.new(name: "Helene Roger", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIA.sample)
influencer_08.photo.attach(io: file, filename: 'Helene_Roger_lseqb7.png', content_type: 'image/png')
influencer_08.save!

puts 'Creating Influencer09...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379353/Influencers/Mylene_Dupont_fite5e.png')
influencer_09 = Influencer.new(name: "Mylene Dupont", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIA.sample)
influencer_09.photo.attach(io: file, filename: 'Mylene_Dupont_fite5e.png', content_type: 'image/png')
influencer_09.save!

puts 'Creating Influencer10...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380515/Influencers/Veronica_Eliot_uufgbi.png')
influencer_10  = Influencer.new(name: "Veronica Eliot", location_list: LOCATION.sample, age_list:  AGE.sample, size_list: SIZE.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIA.sample)
influencer_10.photo.attach(io: file, filename: 'Veronica_Eliot_uufgbi.png', content_type: 'image/png')
influencer_10 .save!

puts 'Creating Influencer11...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379353/Influencers/Rachel_Birk_qsjnuf.png')
influencer_11 = Influencer.new(name: "Rachel Birk", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIA.sample)
influencer_11.photo.attach(io: file, filename: 'Rachel_Birk_qsjnuf.png', content_type: 'image/png')
influencer_11.save!

puts 'Creating Influencer12...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379356/Influencers/Edith_Loiseau_amgyer.png')
influencer_12 = Influencer.new(name: "Edith Loiseau", location_list: LOCATION.sample, age_list:  AGE.sample, size_list:SIZE.sample , women_stats: 0, men_stats: 100, engagement_rate: "3,45%", media_list: MEDIA.sample)
influencer_12.photo.attach(io: file, filename: 'Edith_Loiseau_amgyer.png', content_type: 'image/png')
influencer_12.save!

puts 'Creating Campaign_influencer...'
CampaignInfluencer.create!(campaign_id: campaign_01.id, influencer_id: influencer_01.id)
CampaignInfluencer.create!(campaign_id: campaign_01.id, influencer_id: influencer_02.id)
CampaignInfluencer.create!(campaign_id: campaign_01.id, influencer_id: influencer_03.id)

CampaignInfluencer.create!(campaign_id: campaign_02.id, influencer_id: influencer_04.id)
CampaignInfluencer.create!(campaign_id: campaign_02.id, influencer_id: influencer_05.id)
CampaignInfluencer.create!(campaign_id: campaign_02.id, influencer_id: influencer_06.id)

CampaignInfluencer.create!(campaign_id: campaign_03.id, influencer_id: influencer_07.id)
CampaignInfluencer.create!(campaign_id: campaign_03.id, influencer_id: influencer_08.id)
CampaignInfluencer.create!(campaign_id: campaign_03.id, influencer_id: influencer_01.id)



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
