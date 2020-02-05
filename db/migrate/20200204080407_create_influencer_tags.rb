class CreateInfluencerTags < ActiveRecord::Migration[6.0]
  def change
    create_table :influencer_tags do |t|
      t.references :influencer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
