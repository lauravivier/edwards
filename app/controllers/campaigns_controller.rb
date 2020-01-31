class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaigns = Campaign.find(params[:id])
  end

  def new
    @campaigns = Campaign.new
  end

  def create
    @campaigns = Campaign.new(params[:campaign])
    @campaigns.save
  end
end
