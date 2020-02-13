class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @influencers = Influencer.all
  end

  def new
    @campaign = Campaign.new
    @influencers = Influencer.all
  end

  def edit
    @influencers = Influencer.all
    @campaign = Campaign.find(params[:id])

    if params[:community_location]
      @influencers = @influencers.global_search(params[:community_location])
    end

    if params[:media]
      @influencers = @influencers.where(media: params[:media])
    end


  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.update(campaign_params)

    params[:selection].select { |k, v| v == '1'}.keys.each do |influencer|
      CampaignInfluencer.create(campaign: @campaign, influencer: Influencer.find_by(name: influencer))
    end

    redirect_to campaign_path(@campaign)
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    @campaign.hashtag = campaign_params["hashtag"].reject(&:blank?)
    if @campaign.save
      redirect_to edit_campaign_path(@campaign)
    else
      render :new
    end
  end

  private


  def campaign_params
    params.require(:campaign).permit(:name, :starts_at, :ends_at, :goal, :target, :message, :hashtag => [])
  end


  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end


