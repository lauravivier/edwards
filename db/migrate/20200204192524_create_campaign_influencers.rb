class CreateCampaignInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_influencers do |t|
      t.references :campaign, null: false, foreign_key: true
      t.references :influencer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
