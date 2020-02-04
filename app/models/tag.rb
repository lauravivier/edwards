class Tag < ApplicationRecord
  belongs_to :influencer
  has_many :influencer_tags
end
