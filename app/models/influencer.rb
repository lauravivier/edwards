class Influencer < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_influencersearch,
    against: [:ages, :locations, :sizes, :medias],
    associated_against: {
      sizes: [:name],
      medias: [:name]
    },
    using: {
      tsearch: {any_word: true}
    }

  has_many :campaign_influencers
  has_many :metrics
  has_many :campaigns, through: :campaign_influencers

  acts_as_taggable_on :ages
  acts_as_taggable_on :locations
  acts_as_taggable_on :sizes
  acts_as_taggable_on :medias

  $ages =[25-34, 18-24, 35-44]
  $medias = ["Instagram", "Facebook", "Pinterest", "Twitter"]
  $locations = ["France", "Espagne", "Italie", "Belgique", "Portugal", "Angleterre"]
  $sizes = [100, 1500, 5500, 10500, 50500, 100500, 500500, 1000500]

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
