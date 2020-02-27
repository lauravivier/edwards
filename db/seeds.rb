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

# puts 'Delete old data'

# ActsAsTaggableOn::Tag.destroy_all
# InfluencerTag.destroy_all
# Metric.destroy_all
# CampaignInfluencer.destroy_all
# Influencer.destroy_all
# Campaign.destroy_all
# User.destroy_all


# AGES = ["13 à 17 ans", "18 à 24 ans", "25 à 34ans", "35 à 44 ans", "45 à 54 ans"]
# LOCATIONS = ["France", "Espagne", "Italie", "Belgique", "Angleterre"]
# SIZES = ["10 000 à 20 000 followers", "20 000 à 30 000 followers", "30 000 à 50 000 followers", "50 000 à 100 000 followers", "100 000 followers et +"]
# MEDIAS = ["Instagram", "Facebook", "Twitter", "Youtube", "Pinterest"]

puts 'Creating User...'
user_01 = User.new(name: "Ken", email: "ken@decathlon.com", password: "helloo")
user_01.save!

user_02 = User.new(name: "Laura", email: "lau@decathlon.com", password: "helloo")
user_02.save!

user_03 = User.new(name: "Cyrille", email: "cyrille@decathlon.com", password: "helloo")
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

puts 'Creating Influencer01...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379354/Influencers/Jean_Michel_y4usdq.png')
influencer_01 = Influencer.new(name: "Jean Michel", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"18 à 24 ans", followers: 24642, likes:1351, posts: 170, influencer_type:"Business", engagement_rate: "10,45%", media_list: "Instagram")
influencer_01.photo.attach(io: file, filename: 'Jean_Michel_y4usdq.png', content_type: 'image/png')
influencer_01.save!

puts 'Creating Influencer02...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379706/Influencers/Michel_Berger_i9leqo.png')
influencer_02 = Influencer.new(name: "Michel Berger", location_list: "Italie", size_list: "30 000 à 50 000 followers", age_list:"35 à 44 ans", followers: 35120, likes:136, posts: 245, influencer_type:"Lifestyle", engagement_rate: "9,45%", media_list: "Pinterest")
influencer_02.photo.attach(io: file, filename: 'Michel_Berger_i9leqo.png', content_type: 'image/png')
influencer_02.save!

puts 'Creating Influencer03...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380121/Influencers/Patricia_Ka_yiotqa.png')
influencer_03 = Influencer.new(name: "Patricia Ka", location_list: "Italie", size_list: "100 000 followers et +", age_list:"18 à 24 ans", followers: 125302, likes:630, posts: 240, influencer_type:"Business", engagement_rate: "8,45%", media_list: "Youtube")
influencer_03.photo.attach(io: file, filename: 'Patricia_Ka_yiotqa.png', content_type: 'image/png')
influencer_03.save!

puts 'Creating Influencer04...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380538/Influencers/Jeremy_Legrand_y4nffz.png')
influencer_04 = Influencer.new(name: "Jeremy Legrand", location_list: "Belgique", size_list: "20 000 à 30 000 followers", age_list:"45 à 54 ans", followers: 29821, likes:703, posts: 868, influencer_type:"Vlog", engagement_rate: "7,45%", media_list: "Twitter")
influencer_04.photo.attach(io: file, filename: 'Jeremy_Legrand_y4nffz.png', content_type: 'image/png')
influencer_04.save!

puts 'Creating Influencer05...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379355/Influencers/Alice_Rocher_qz3aaa.png')
influencer_05 = Influencer.new(name: "Alice Rocher", location_list: "Belgique", size_list: "100 000 followers et +", age_list:"25 à 34ans",  followers: 124153, likes:112, posts: 324, influencer_type:"Fitness", engagement_rate: "6,45%", media_list: "Facebook")
influencer_05.photo.attach(io: file, filename: 'Alice_Rocher_qz3aaa.png', content_type: 'image/png')
influencer_05.save!

puts 'Creating Influencer06...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380049/Influencers/Eleanore_Suez_bzrkxp.png')
influencer_06 = Influencer.new(name: "Eleanore Suez", location_list: "Belgique", size_list: "30 000 à 50 000 followers", age_list:"18 à 24 ans", followers: 30294, likes:250, posts: 734, influencer_type:"Lifestyle", engagement_rate: "5,45%", media_list: "Twitter")
influencer_06.photo.attach(io: file, filename: 'Eleanore_Suez_bzrkxp.png', content_type: 'image/png')
influencer_06.save!

puts 'Creating Influencer07...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582770525/Influencers/Marine_Pain_fhl8ef.png')
influencer_07 = Influencer.new(name: "Marine Pain", location_list: "Angleterre", size_list: "30 000 à 50 000 followers", age_list:"45 à 54 ans", followers: 40521, likes: 252, posts: 250, influencer_type:"Vlog", engagement_rate: "4,45%", media_list: "Youtube")
influencer_07.photo.attach(io: file, filename: 'Marine_Pain_fhl8ef.png', content_type: 'image/png')

puts 'Creating Influencer08...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379354/Influencers/Helene_Roger_lseqb7.png')
influencer_08 = Influencer.new(name: "Helene Roger", location_list: "Espagne", size_list: "30 000 à 50 000 followers", age_list:"25 à 34ans", followers: 49310, likes: 964, posts: 100, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Facebook")
influencer_08.photo.attach(io: file, filename: 'Helene_Roger_lseqb7.png', content_type: 'image/png')
influencer_08.save!

puts 'Creating Influencer09...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379353/Influencers/Mylene_Dupont_fite5e.png')
influencer_09 = Influencer.new(name: "Mylene Dupont", location_list: "Espagne", size_list: "10 000 à 20 000 followers", age_list:"18 à 24 ans", followers: 19502, likes:652, posts: 107, influencer_type:"Travel", engagement_rate: "3,45%",  media_list: "Instagram")
influencer_09.photo.attach(io: file, filename: 'Mylene_Dupont_fite5e.png', content_type: 'image/png')
influencer_09.save!

file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380515/Influencers/Veronica_Eliot_uufgbi.png')
influencer_10  = Influencer.new(name: "Veronica Eliot", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 21987, likes:2051, posts: 103, influencer_type:"Fitness", engagement_rate: "3,45%", media_list: "Instagram")
influencer_10.photo.attach(io: file, filename: 'Veronica_Eliot_uufgbi.png', content_type: 'image/png')
influencer_10 .save!

puts 'Creating Influencer11...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379353/Influencers/Rachel_Birk_qsjnuf.png')
influencer_11 = Influencer.new(name: "Rachel Birk", location_list: "France", size_list: "10 000 à 20 000 followers", age_list:"18 à 24 ans", followers: 17793, likes:601, posts: 1003, influencer_type:"Travel", engagement_rate: "3,45%", media_list: "Instagram")
influencer_11.photo.attach(io: file, filename: 'Rachel_Birk_qsjnuf.png', content_type: 'image/png')
influencer_11.save!

puts 'Creating Influencer12...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379356/Influencers/Edith_Loiseau_amgyer.png')
influencer_12 = Influencer.new(name: "Edith Loiseau", location_list: "France", size_list: "10 000 à 20 000 followers", age_list:"13 à 17 ans", followers: 15391, likes:421, posts: 469, influencer_type:"Travel", engagement_rate: "3,45%", media_list: "Instagram")
influencer_12.photo.attach(io: file, filename: 'Edith_Loiseau_amgyer.png', content_type: 'image/png')
influencer_12.save!

puts 'Creating Campaign_influencer...'
CampaignInfluencer.create(campaign_id: campaign_01.id, influencer_id: influencer_01.id)
CampaignInfluencer.create(campaign_id: campaign_01.id, influencer_id: influencer_02.id)
CampaignInfluencer.create(campaign_id: campaign_01.id, influencer_id: influencer_03.id)

CampaignInfluencer.create(campaign_id: campaign_02.id, influencer_id: influencer_04.id)
CampaignInfluencer.create(campaign_id: campaign_02.id, influencer_id: influencer_05.id)
CampaignInfluencer.create(campaign_id: campaign_02.id, influencer_id: influencer_06.id)

CampaignInfluencer.create(campaign_id: campaign_03.id, influencer_id: influencer_07.id)
CampaignInfluencer.create(campaign_id: campaign_03.id, influencer_id: influencer_08.id)
CampaignInfluencer.create(campaign_id: campaign_03.id, influencer_id: influencer_01.id)


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


metric = Metric.new(
  post_date: row[0],
  social_media: row[1],
  media_type: row[2],
  hashtag: row[3],
  impression: row[4],
  click: row[5],
  comment: row[6],
  engagement: row [7],
  emv: row[8],
  campaign: Campaign.last,
  influencer: Influencer.last
)
metric.save!
end

metric_11 = Metric.new(post_date: '15/02/2020', social_media: 'instagram', media_type: 'galery', hashtag: 'poney', impression: 2500, click: 30, comment: 4, engagement: 0.05, emv: 2, campaign: Campaign.last, influencer: Influencer.last)
metric_11.save!


puts 'Seed is Finished!'
