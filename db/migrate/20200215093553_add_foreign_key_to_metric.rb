class AddForeignKeyToMetric < ActiveRecord::Migration[6.0]
  def change
    add_reference :metrics, :campaign, index: true
    add_reference :metrics, :influencer, index: true
  end
end
