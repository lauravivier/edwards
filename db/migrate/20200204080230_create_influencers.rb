class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :name
      t.integer :women_stats
      t.integer :men_stats
      t.string :engagement_rate
      t.timestamps
    end
  end
end
