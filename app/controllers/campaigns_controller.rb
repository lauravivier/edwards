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
  end

  def create
    @campaigns = Campaign.new(campaigns_params)
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end

  private

  def campaign_params
    params.require(:user).permit(:name, :starts_at, :ends_at, :goal, :target, :message, :hashtag)
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end
