class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.date :starts_at
      t.date :ends_at
      t.string :goal
      t.string :target
      t.string :message
      t.string :hashtag

      t.timestamps
    end
  end
end
