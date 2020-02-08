class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
    @influencers = Influencer.all
  end

  def create
    @campaign = Campaign.new
    @campaign.save
    redirect_to campaign_path(@campaign)
  end

  private

  # def campaign_params
  #   params.require(:campaign).permit(:name, :starts_at, :ends_at, :goal, :target, :message, :hashtag)
  # end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end
