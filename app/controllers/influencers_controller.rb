class InfluencersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
      influencers.name ILIKE :query \
      OR influencers.community_location ILIKE :query \
      OR influencers.community_age ILIKE :query \
      OR influencers.engagement_rate ILIKE :query \
      OR influencers.media ILIKE :query \
      OR tags.name ILIKE :query \
      "
      @influencers = Influencer.joins(:tag).where(sql_query, query: "%#{params[:query]}%")
    else
      @influencers = Influencer.all
    end
  end
end
