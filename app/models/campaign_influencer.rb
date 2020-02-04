class CampaignInfluencer < ApplicationRecord
  belongs_to :campaign
  belongs_to :influencer
end
