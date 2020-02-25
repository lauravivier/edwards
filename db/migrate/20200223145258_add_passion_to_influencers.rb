class AddPassionToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_reference :influencers, :passions, :string
  end
end
