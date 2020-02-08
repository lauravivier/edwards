class Campaign < ApplicationRecord
  has_many :campaign_influencers
  has_many :influencers, through: :campaign_influencers
  has_many :metrics
  belongs_to :user

  GOALS = ["Renforcer son image", "Accroître l'engagement", "Améliorer la conversion", "Récolter des informations"]
  validates :goal, inclusion: {in: GOALS}

  HASHTAGS = ["#cravache", "#sm", "#partenariat", "#poney", "#fiftyshadesofgrey"]
  # validates :hashtag, inclusion: {in: HASHTAGS}

  #validates :name, presence: true
  #validates :starts_at, presence: true
  #validates :ends_at, presence: true
  #validates :goal, presence: true
  #validates :target, presence: true
  #validates :message, presence: true
  #validates :hashtag
end
