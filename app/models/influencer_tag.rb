class InfluencerTag < ApplicationRecord
  include PgSearch::Model
  belongs_to :influencer
  belongs_to :tag
end
