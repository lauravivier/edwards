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

  def step_2
    @influencers = Influencer.all
      if params[:query].present?
      sql_query = " \
      influencers.community_location ILIKE :query \
      "
      @influencers = Influencer.joins(:tag).where(sql_query, query: "%#{params[:query]}%")
    else
      @influencers = []
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.update(campaigns_params)
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
