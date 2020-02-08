class ModifyHastagInCampaign < ActiveRecord::Migration[6.0]
  def change
    remove_column :campaigns, :hashtag
    add_column :campaigns, :hashtag, :text, array: true, default:[]
  end
end
