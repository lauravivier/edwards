class Influencer < ApplicationRecord

  has_many :campaign_influencers
  has_many :campaigns, through: :campaign_influencers
  has_many :metrics
  has_one_attached :photo
  acts_as_taggable_on :ages
  acts_as_taggable_on :locations
  acts_as_taggable_on :sizes
  acts_as_taggable_on :medias

  $ages = ["13 à 17 ans", "18 à 24 ans", "25 à 34ans", "35 à 44 ans", "45 à 54 ans"]
  $medias = ["Instagram", "Facebook", "Twitter", "Youtube", "Pinterest"]
  $locations = ["France", "Espagne", "Italie", "Belgique", "Angleterre"]
  $sizes = ["10 000 à 20 000 followers", "20 000 à 30 000 followers", "30 000 à 50 000 followers", "50 000 à 100 000 followers", "100 000 followers et +"]

  include PgSearch::Model


  pg_search_scope :global_influencer_search,
    against: [:name],
    associated_against: {
      ages: [:name],
      locations: [:name],
      sizes: [:name],
      medias: [:name]
    },
    using: {
      tsearch: {prefix: true}
    }
  # validates: name, presence: true
  # validates: community_location, presence: true
  # validates: community_age, presence: true
  # validates: community_size, presence: true
  # validates: women_stats, presence: true
  # validates: men_stats, presence: true
  # validates: engagement_rate, presence: true
  # validates: media, presence: true

  # pg_search_scope :global_search,
  # against: [:community_location, :community_age, :media],
  # # associated_against: {
  # #   tag: [:name]
  # # },
  # using: {
  #   tsearch: { prefix: true }
  # }
  # multisearchable against: [:community_location]
end
