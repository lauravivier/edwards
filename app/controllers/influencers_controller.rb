class InfluencersController < ApplicationController
  def index
    # if params[:query].present?
    #   sql_query = " \
    #   influencers.community_location ILIKE :query \
    #   "
    #   @influencers = Influencer.joins(:tag).where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @influencers = Influencer.all
    # end
    if params["search"]
      @filter = params["search"]["ages"].concat(params["search"]["medias"]).concat(params["search"]["sizes"]).concat(params["search"]["locations"]).flatten.reject(&:blank?)
      @influencers = @filter.empty? ? Influencer.all : Influencer.all.tagged_with(@filter, any: true)
    else
      @influencer = Influencer.all
    end
  end
end
