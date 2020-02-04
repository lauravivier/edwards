class InfluencerTag < ApplicationRecord
  belongs_to :influencer
  has_many :tags
end
