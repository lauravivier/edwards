class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :update]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @influencers = @campaign.influencers
    @number_of_influencers = @campaign.influencers.count
    # @geoloc_influencers = @community_location
  end

  def new
    @campaign = Campaign.new
    @influencers = Influencer.all
  end

  def edit
    @campaign = Campaign.find(params[:id])
    if params["search"]
      @filter = params["search"]["ages"].concat(params["search"]["medias"]).concat(params["search"]["sizes"]).concat(params["search"]["locations"]).flatten.reject(&:blank?)
      @influencers = @filter.empty? ? Influencer.all : Influencer.all.tagged_with(@filter, any: true)
    else
      @influencers = Influencer.all
    end

    # if params[:query].present?
    #   @influencers = Influencer.global_search(params[:query])
    # else
    #   @influencers = Influencer.all
    # end
  end

  def update
      @campaign.update(update_params)
      params[:selection].select { |k, v| v == '1'}.keys.each do |influencer|
      CampaignInfluencer.create(campaign: @campaign, influencer: Influencer.find_by(name: influencer))
    end

    redirect_to campaign_path(@campaign)
  end

  def create
      @campaign = Campaign.new(campaign_params)
      @campaign.user = current_user
      #@campaign.hashtag = campaign_params["hashtag"].reject(&:blank?)
    if @campaign.save
      redirect_to edit_campaign_path(@campaign)
    else
      render :new
    end
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :starts_at, :ends_at, :goal, :target, :message, :hashtag, :engagement_rate, :men_stats, :community_size => [])
  end

  def update_params
    params.permit(:name, :starts_at, :ends_at, :goal, :target, :message, :hashtag, :men_stats, :engagement_rate, :community_size => [])
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end


