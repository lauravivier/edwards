class Tag < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name]
  has_many :influencers, through: :influencer_tags
end
