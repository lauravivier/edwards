class CreateInfluencerTags < ActiveRecord::Migration[6.0]
  def change
    create_table :influencer_tags do |t|
      t.references :typology, foreign_key: true
      t.timestamps
    end
  end
end
