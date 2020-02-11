class CreateMetrics < ActiveRecord::Migration[6.0]
  def change
    create_table :metrics do |t|
      t.date :post_date
      t.string :social_media
      t.string :media_type
      t.string :hashtag
      t.integer :impression
      t.integer :click
      t.integer :like
      t.integer :comment
      t.float :engagement
      t.float :emv

      t.timestamps
    end
  end
end
