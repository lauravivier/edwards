class Influencer < ApplicationRecord
  include PgSearch::Model
  has_many :campaign_influencers
  has_many :campaigns, through: :campaign_influencers
  has_many :tags, through: :influencer_tags

  # validates: name, presence: true
  # validates: community_location, presence: true
  # validates: community_age, presence: true
  # validates: community_size, presence: true
  # validates: women_stats, presence: true
  # validates: men_stats, presence: true
  # validates: engagement_rate, presence: true
  # validates: media, presence: true

  pg_search_scope :global_search,
  against: [:name, :community_location, :community_age, :engagement_rate, :media],
  associated_against: {
    tag: [:name]
  },
  using: {
    tsearch: { prefix: true }
  }
  multisearchable against: [:name, :community_location, :community_age, :engagement_rate, :media]
end
