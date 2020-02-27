class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :name
      t.integer :followers
      t.integer :posts
      t.string :engagement_rate
      t.string :influencer_type
      t.integer :likes
      t.timestamps
    end
  end
end
