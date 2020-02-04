class Influencer < ApplicationRecord
  has_many :campaign_influencers
  has_many :influencer_tags

  #validates: name, presence: true
  #validates: community_location, presence: true
  #validates: community_age, presence: true
  #validates: community_size, presence: true
  #validates: women_stats, presence: true
  #validates: men_stats, presence: true
  #validates: engagement_rate, presence: true
  #validates: media, presence: true

end
