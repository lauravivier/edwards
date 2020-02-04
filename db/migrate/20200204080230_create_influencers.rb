class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :name
      t.string :community_location
      t.string :community_age
      t.integer :community_size
      t.integer :women_stats
      t.integer :men_stats
      t.string :engagement_rate
      t.string :media

      t.timestamps
    end
  end
end
