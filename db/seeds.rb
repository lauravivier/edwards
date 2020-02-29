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

ActsAsTaggableOn::Tag.destroy_all
InfluencerTag.destroy_all
Metric.destroy_all
CampaignInfluencer.destroy_all
Influencer.destroy_all
Campaign.destroy_all
User.destroy_all


# AGES = ["13 à 17 ans", "18 à 24 ans", "25 à 34ans", "35 à 44 ans", "45 à 54 ans"]
# LOCATIONS = ["France", "Espagne", "Italie", "Belgique", "Angleterre"]
# SIZES = ["10 000 à 20 000 followers", "20 000 à 30 000 followers", "30 000 à 50 000 followers", "50 000 à 100 000 followers", "100 000 followers et +"]
# MEDIAS = ["Instagram", "Facebook", "Twitter", "Youtube", "Pinterest"]

puts 'Creating User...'
user_01 = User.new(name: "Ken", email: "ken@sunny.com", password: "helloo")
user_01.save!

user_02 = User.new(name: "Laura", email: "laura@sunny.com", password: "helloo")
user_02.save!

user_03 = User.new(name: "Cyrille", email: "cyrille@sunny.com", password: "helloo")
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
influencer_01 = Influencer.new(name: "Jean Michelo", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"18 à 24 ans", followers: 24642, likes:1351, posts: 170, influencer_type:"Business", engagement_rate: "10,45%", media_list: "Instagram")
influencer_01.photo.attach(io: file, filename: 'Jean_Michel_y4usdq.png', content_type: 'image/png')
influencer_01.save!

puts 'Creating Influencer02...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379706/Influencers/Michel_Berger_i9leqo.png')
influencer_02 = Influencer.new(name: "Joe Bergato", location_list: "Italie", size_list: "30 000 à 50 000 followers", age_list:"35 à 44 ans", followers: 35120, likes:136, posts: 245, influencer_type:"Lifestyle", engagement_rate: "9,45%", media_list: "Pinterest")
influencer_02.photo.attach(io: file, filename: 'Michel_Berger_i9leqo.png', content_type: 'image/png')
influencer_02.save!

puts 'Creating Influencer03...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380121/Influencers/Patricia_Ka_yiotqa.png')
influencer_03 = Influencer.new(name: "Patricia Dalou", location_list: "Italie", size_list: "100 000 followers et +", age_list:"18 à 24 ans", followers: 125302, likes:630, posts: 240, influencer_type:"Business", engagement_rate: "8,45%", media_list: "Youtube")
influencer_03.photo.attach(io: file, filename: 'Patricia_Ka_yiotqa.png', content_type: 'image/png')
influencer_03.save!

puts 'Creating Influencer04...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380538/Influencers/Jeremy_Legrand_y4nffz.png')
influencer_04 = Influencer.new(name: "Jeremy Legrand", location_list: "Belgique", size_list: "20 000 à 30 000 followers", age_list:"45 à 54 ans", followers: 29821, likes:703, posts: 868, influencer_type:"Vlog", engagement_rate: "7,45%", media_list: "Twitter")
influencer_04.photo.attach(io: file, filename: 'Jeremy_Legrand_y4nffz.png', content_type: 'image/png')
influencer_04.save!

puts 'Creating Influencer05...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379355/Influencers/Alice_Rocher_qz3aaa.png')
influencer_05 = Influencer.new(name: "Alice Rocher", location_list: "Belgique", size_list: "100 000 followers et +", age_list:"25 à 34ans",  followers: 124153, likes:112, posts: 324, influencer_type:"Fashion", engagement_rate: "6,45%", media_list: "Facebook")
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
influencer_07.save!

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

puts 'Creating Influencer10...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582380515/Influencers/Veronica_Eliot_uufgbi.png')
influencer_10  = Influencer.new(name: "Veronica Eliot", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 21987, likes:2051, posts: 103, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Instagram")
influencer_10.photo.attach(io: file, filename: 'Veronica_Eliot_uufgbi.png', content_type: 'image/png')
influencer_10 .save!

puts 'Creating Influencer11...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379353/Influencers/Rachel_Birk_qsjnuf.png')
influencer_11 = Influencer.new(name: "Rachel Birk", location_list: "France", size_list: "10 000 à 20 000 followers", age_list:"18 à 24 ans", followers: 17793, likes:1601, posts: 1003, influencer_type:"Travel", engagement_rate: "3,45%", media_list: "Instagram")
influencer_11.photo.attach(io: file, filename: 'Rachel_Birk_qsjnuf.png', content_type: 'image/png')
influencer_11.save!

puts 'Creating Influencer12...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582379356/Influencers/Edith_Loiseau_amgyer.png')
influencer_12 = Influencer.new(name: "Edith Loiseau", location_list: "France", size_list: "10 000 à 20 000 followers", age_list:"13 à 17 ans", followers: 15391, likes:421, posts: 469, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Instagram")
influencer_12.photo.attach(io: file, filename: 'Edith_Loiseau_amgyer.png', content_type: 'image/png')
influencer_12.save!

puts 'Creating Influencer13...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955950/Influencers/Louis_Harris_kp6vel.png')
influencer_13 = Influencer.new(name: "Louis Harris", location_list: "Italie", size_list: "100 000 followers et +", age_list:"18 à 24 ans", followers: 125302, likes:630, posts: 240, influencer_type:"Travel", engagement_rate: "8,45%", media_list: "Youtube")
influencer_13.photo.attach(io: file, filename: 'Louis_Harris_kp6vel.png', content_type: 'image/png')
influencer_13.save!

puts 'Creating Influencer14...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955947/Influencers/Blanche_Dubee_gydjrw.png')
influencer_14 = Influencer.new(name: "Blanche Dube", location_list: "Belgique", size_list: "20 000 à 30 000 followers", age_list:"45 à 54 ans", followers: 26501, likes:1289, posts: 1268, influencer_type:"Vlog", engagement_rate: "7,45%", media_list: "Twitter")
influencer_14.photo.attach(io: file, filename: 'Blanche_Dubee_gydjrw.png', content_type: 'image/png')
influencer_14.save!

puts 'Creating Influencer15...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955953/Influencers/Lucrezia_De_Luca_mqkd1f.png')
influencer_15 = Influencer.new(name: "Lucrezia De Luca", location_list: "Belgique", size_list: "100 000 followers et +", age_list:"25 à 34ans",  followers: 124153, likes:112, posts: 324, influencer_type:"Fitness", engagement_rate: "6,45%", media_list: "Facebook")
influencer_15.photo.attach(io: file, filename: 'Lucrezia_De_Luca_mqkd1f.png', content_type: 'image/png')
influencer_15.save!

puts 'Creating Influencer16...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955953/Influencers/Marianna_Greco_xnehra.png')
influencer_16 = Influencer.new(name: "Marianna Greco", location_list: "Belgique", size_list: "30 000 à 50 000 followers", age_list:"18 à 24 ans", followers: 30294, likes:250, posts: 734, influencer_type:"Fitness", engagement_rate: "5,45%", media_list: "Twitter")
influencer_16.photo.attach(io: file, filename: 'Marianna_Greco_xnehra.png', content_type: 'image/png')
influencer_16.save!

puts 'Creating Influencer17...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955953/Influencers/Matthew_Jerry_qh6hhg.png')
influencer_17 = Influencer.new(name: "Matthew Jerry", location_list: "Angleterre", size_list: "30 000 à 50 000 followers", age_list:"45 à 54 ans", followers: 40521, likes: 252, posts: 250, influencer_type:"Vlog", engagement_rate: "4,45%", media_list: "Youtube")
influencer_17.photo.attach(io: file, filename: 'Matthew_Jerry_qh6hhg.png', content_type: 'image/png')
influencer_17.save!

puts 'Creating Influencer18...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955950/Influencers/Frank_Rosario_x4f1fy.png')
influencer_18 = Influencer.new(name: "Frank Rosario", location_list: "Espagne", size_list: "30 000 à 50 000 followers", age_list:"25 à 34ans", followers: 49310, likes: 964, posts: 100, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Facebook")
influencer_18.photo.attach(io: file, filename: 'Frank_Rosario_x4f1fy.png', content_type: 'image/png')
influencer_18.save!

puts 'Creating Influencer19...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955951/Influencers/Kristin_Boston_lju5ov.png')
influencer_19 = Influencer.new(name: "Kristin Boston", location_list: "Espagne", size_list: "10 000 à 20 000 followers", age_list:"18 à 24 ans", followers: 17502, likes:901, posts: 462, influencer_type:"Travel", engagement_rate: "3,45%",  media_list: "Instagram")
influencer_19.photo.attach(io: file, filename: 'Kristin_Boston_lju5ov.png', content_type: 'image/png')
influencer_19.save!

puts 'Creating Influencer20...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955947/Influencers/Corinne_Lemelin_ofyziw.png')
influencer_20 = Influencer.new(name: "Corinne Lemelin", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 28127, likes:1951, posts: 5137, influencer_type:"Fitness", engagement_rate: "3,45%", media_list: "Instagram")
influencer_20.photo.attach(io: file, filename: 'Corinne_Lemelin_ofyziw.png', content_type: 'image/png')
influencer_20 .save!

puts 'Creating Influencer21...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955948/Influencers/Estelle_Giroux_pjsabw.png')
influencer_21 = Influencer.new(name: "Estelle Giroux", location_list: "Belgique", size_list: "100 000 followers et +", age_list:"25 à 34ans",  followers: 124153, likes:112, posts: 324, influencer_type:"Fashion", engagement_rate: "6,45%", media_list: "Facebook")
influencer_21.photo.attach(io: file, filename: 'Alice_Rocher_qz3aaa.png', content_type: 'image/png')
influencer_21.save!

puts 'Creating Influencer22...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955952/Influencers/Leo_Rymill_a0wnux.png')
influencer_22 = Influencer.new(name: "Leo Rymill", location_list: "Angleterre", size_list: "30 000 à 50 000 followers", age_list:"45 à 54 ans", followers: 40521, likes: 252, posts: 250, influencer_type:"Fitness", engagement_rate: "4,45%", media_list: "Youtube")
influencer_22.photo.attach(io: file, filename: 'Leo_Rymill_a0wnux.png', content_type: 'image/png')
influencer_22.save!

puts 'Creating Influencer23...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955949/Influencers/Diana_Loewe_sqt8ek.png')
influencer_23 = Influencer.new(name: "Diana Loewe", location_list: "Belgique", size_list: "30 000 à 50 000 followers", age_list:"18 à 24 ans", followers: 30294, likes:250, posts: 734, influencer_type:"Lifestyle", engagement_rate: "5,45%", media_list: "Twitter")
influencer_23.photo.attach(io: file, filename: 'Diana_Loewe_sqt8ek.png', content_type: 'image/png')
influencer_23.save!

puts 'Creating Influencer24...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955950/Influencers/Evie_Stone_thsbyd.png')
influencer_24 = Influencer.new(name: "Evie Stone", location_list: "Espagne", size_list: "30 000 à 50 000 followers", age_list:"25 à 34ans", followers: 49310, likes: 964, posts: 1601, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Facebook")
influencer_24.photo.attach(io: file, filename: 'Evie_Stone_thsbyd.png', content_type: 'image/png')
influencer_24.save!

puts 'Creating Influencer25...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582955952/Influencers/Luke_Butler_gglile.png')
influencer_25 = Influencer.new(name: "Luke Butler", location_list: "Espagne", size_list: "10 000 à 20 000 followers", age_list:"18 à 24 ans", followers: 27934, likes:1595, posts: 918, influencer_type:"Travel", engagement_rate: "3,45%",  media_list: "Instagram")
influencer_25.photo.attach(io: file, filename: 'Luke_Butler_gglile.png', content_type: 'image/png')
influencer_25.save!

puts 'Creating Influencer26...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582955946/Influencers/Charles_Mitchell_fe1n7s.png')
influencer_26 = Influencer.new(name: "Charles Mitchell", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 26317, likes:1296, posts: 2703, influencer_type:"Fitness", engagement_rate: "3,45%", media_list: "Instagram")
influencer_26.photo.attach(io: file, filename: 'Charles_Mitchell_fe1n7s.png', content_type: 'image/png')
influencer_26.save!

puts 'Creating Influencer27...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955948/Influencers/Apolonio_Ruvalcaba_l4mvyr.png')
influencer_27 = Influencer.new(name: "Apolonio Ruvalcaba", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 19621, likes:1096, posts: 673, influencer_type:"Fitness", engagement_rate: "3,45%", media_list: "Instagram")
influencer_27.photo.attach(io: file, filename: 'Apolonio_Ruvalcaba_l4mvyr.png', content_type: 'image/png')
influencer_27.save!

puts 'Creating Influencer28...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto/v1582955949/Influencers/Petrona_Ybarra_ssjpan.png')
influencer_28 = Influencer.new(name: "Petrona Ybarra", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 20617, likes:1406, posts: 968, influencer_type:"Travel", engagement_rate: "3,45%", media_list: "Instagram")
influencer_28.photo.attach(io: file, filename: 'Petrona_Ybarra_ssjpan.png', content_type: 'image/png')
influencer_28.save!

puts 'Creating Influencer29...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955951/Influencers/Iris_Espinal_v7hjdg.png')
influencer_29 = Influencer.new(name: "Iris Espinal", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 22701, likes:981, posts: 561, influencer_type:"Fitness", engagement_rate: "3,45%", media_list: "Instagram")
influencer_29.photo.attach(io: file, filename: 'Iris_Espinal_v7hjdg.png', content_type: 'image/png')
influencer_29.save!

puts 'Creating Influencer30...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955951/Influencers/Urszula_Duda_tzwfdk.png')
influencer_30 = Influencer.new(name: "Urszula_Duda_tzwfdk.png", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 11341, likes:751, posts: 721, influencer_type:"Fitness", engagement_rate: "3,45%", media_list: "Instagram")
influencer_30.photo.attach(io: file, filename: 'Veronica_Eliot_uufgbi.png', content_type: 'image/png')
influencer_30.save!

puts 'Creating Influencer31...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955947/Influencers/Ziemowit_Kaminskii_rbega7.png')
influencer_21 = Influencer.new(name: "Ziemowit Kaminski", location_list: "Belgique", size_list: "100 000 followers et +", age_list:"25 à 34ans",  followers: 124153, likes:112, posts: 324, influencer_type:"Travel", engagement_rate: "6,45%", media_list: "Facebook")
influencer_21.photo.attach(io: file, filename: 'Ziemowit_Kaminskii_rbega7.png', content_type: 'image/png')
influencer_21.save!

puts 'Creating Influencer32...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955948/Influencers/Victor_Silva_nkl2jb.png')
influencer_32 = Influencer.new(name: "Victor Silva", location_list: "Angleterre", size_list: "30 000 à 50 000 followers", age_list:"45 à 54 ans", followers: 40521, likes: 252, posts: 250, influencer_type:"Fitness", engagement_rate: "4,45%", media_list: "Youtube")
influencer_32.photo.attach(io: file, filename: 'Victor_Silva_nkl2jb.png', content_type: 'image/png')
influencer_32.save!

puts 'Creating Influencer33...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955949/Influencers/Janice_Milligan_kwsgwm.png')
influencer_33 = Influencer.new(name: "Janice Milligan", location_list: "Belgique", size_list: "30 000 à 50 000 followers", age_list:"18 à 24 ans", followers: 30294, likes:250, posts: 734, influencer_type:"Lifestyle", engagement_rate: "5,45%", media_list: "Twitter")
influencer_33.photo.attach(io: file, filename: 'Janice_Milligan_kwsgwm.png', content_type: 'image/png')
influencer_33.save!

puts 'Creating Influencer34...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955949/Influencers/Charles_Sowers_sikmxe.png')
influencer_34 = Influencer.new(name: "Charles Sowers", location_list: "Espagne", size_list: "30 000 à 50 000 followers", age_list:"25 à 34ans", followers: 49310, likes: 964, posts: 691, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Facebook")
influencer_34.photo.attach(io: file, filename: 'Charles_Sowers_sikmxe.png', content_type: 'image/png')
influencer_34.save!

puts 'Creating Influencer35...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955947/Influencers/Sarah_Neely_kufvid.png')
influencer_35 = Influencer.new(name: "Sarah Neely", location_list: "Espagne", size_list: "10 000 à 20 000 followers", age_list:"18 à 24 ans", followers: 19502, likes: 1522, posts: 953, influencer_type:"Travel", engagement_rate: "3,45%",  media_list: "Instagram")
influencer_35.photo.attach(io: file, filename: 'Sarah_Neely_kufvid.png', content_type: 'image/png')
influencer_35.save!

puts 'Creating Influencer36...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955950/Influencers/Jerome_Holcomb_j1jcn6.png')
influencer_36 = Influencer.new(name: "Jerome Holcomb", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 25140, likes:517, posts: 623, influencer_type:"Lifestyle", engagement_rate: "3,45%", media_list: "Instagram")
influencer_36.photo.attach(io: file, filename: 'Jerome_Holcomb_j1jcn6.png', content_type: 'image/png')
influencer_36.save!

puts 'Creating Influencer37...'
file = URI.open('https://res.cloudinary.com/ddciebk6s/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1582955950/Influencers/Henry_Morgan_i2jzpy.png')
influencer_37 = Influencer.new(name: "Henry Morgan", location_list: "France", size_list: "20 000 à 30 000 followers", age_list:"13 à 17 ans", followers: 29102, likes:1352, posts: 593, influencer_type:"Travel", engagement_rate: "3,45%", media_list: "Instagram")
influencer_37.photo.attach(io: file, filename: 'Henry_Morgan_i2jzpy.png', content_type: 'image/png')
influencer_37.save!


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
