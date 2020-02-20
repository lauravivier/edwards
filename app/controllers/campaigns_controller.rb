class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @influencers = @campaign.influencers
    @metrics = @campaign.metrics
    @sum = sum_impression_metrics
    @impression_by_influencer = sum_influencer_impression
    @like_by_influencer = sum_influencer_like
    @comment_by_influencer = sum_influencer_comment
    #@hastag_by_influencer = sum_influencer_hastag
    @sum_engagement = sum_influencer_engagement
    @nbr_post = sum_post
    @nbr_impression = sum_impression
    @nbr_like = sum_like
    @nbr_comment = sum_comment
    @nbr_engagement = sum_engagement.ceil
  end

  def sum_impression
    t = 0
    t =+ sum_influencer_impression.values.sum
    return t
  end

  def sum_like
    t = 0
    t =+ sum_influencer_like.values.sum
    return t
  end

  def sum_comment
    t = 0
    t =+ sum_influencer_comment.values.sum
    return t
  end

  def sum_engagement
    t = 0
    t =+ sum_influencer_engagement.values.sum
    return t
  end

  def sum_post
    t = 0
    t =+ sum_influencer_post.values.count
    return t
  end

  def sum_influencer_post
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      influencer.metrics.each do |metric|
        hsh[influencer.name] = metric.post_date
      end
    end
    return hsh
  end

  def sum_influencer_impression
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      influencer.metrics.each do |metric|
        hsh[influencer.name] = metric.impression
      end
    end
    return hsh
  end

  def sum_influencer_like
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      influencer.metrics.each do |metric|
        hsh[influencer.name] = metric.click
      end
    end
    return hsh
  end

  def sum_influencer_comment
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      influencer.metrics.each do |metric|
        hsh[influencer.name] = metric.comment
      end
    end
    return hsh
  end

  def sum_influencer_engagement
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      influencer.metrics.each do |metric|
        hsh[influencer.name] = metric.engagement * metric.impression
      end
    end
    return hsh
  end

  #def sum_influencer_hastag
    #hsh = Hash.new
    #@campaign.influencers.each do |influencer|
      #influencer.metrics.each do |metric|
       # hsh[influencer.name] = metric.hastag
      #end
    #end
    #return hsh
  #end

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

  def sum_impression_metrics
    sum = 0
    @metrics.each do |metric|
      sum += metric.impression
    end
    sum
  end

  def campaign_params
    params.require(:campaign).permit(:name, :starts_at, :ends_at, :goal, :target, :message, :hashtag => [])
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end
