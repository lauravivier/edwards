class AddForeignKeyToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_reference :campaigns, :metric, index: true
  end
end
