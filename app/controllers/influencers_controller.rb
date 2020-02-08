class InfluencersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
      influencers.community_location ILIKE :query \
      "
      @influencers = Influencer.joins(:tag).where(sql_query, query: "%#{params[:query]}%")
    else
      @influencers = []
    end
  end
end
