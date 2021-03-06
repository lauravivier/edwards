class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :update]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @influencers = @campaign.influencers

    @impression_by_influencer = sum_influencer_impression

    #@influencer_audience = Campaign.influencer.audience.find(params[:id])

    @hashtag = @campaign.metrics.pluck(:hashtag).join(',').split(',').join(', ')
    @metrics = @campaign.metrics
    @sum = sum_impression_metrics
    @like_by_influencer = sum_influencer_like
    @comment_by_influencer = sum_influencer_comment
    #@hastag_by_influencer = sum_influencer_hastag
    @sum_engagement = sum_influencer_engagement
    @nbr_post = sum_post
    @nbr_impression = sum_impression
    @nbr_like = sum_like
    @nbr_comment = sum_comment
    @nbr_engagement = sum_engagement.ceil
    @number_of_influencers = @campaign.influencers.count
    # @geoloc_influencers = @community_location
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

  def sum_influencer_engagement
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      influencer.metrics.each do |metric|
        hsh[influencer.name] = metric.engagement * metric.impression
      end
    end
    return hsh
  end

  def new
    @campaign = Campaign.new
    @influencers = Influencer.all
  end

  def edit
    @campaign = Campaign.find(params[:id])
    if params["query"].present?
      @filtrer = params["query"]["ages"].concat(params["query"]["medias"]).concat(params["query"]["sizes"]).flatten.reject(&:blank?)
      if @filtrer.present?
        @influencers = Influencer.tagged_with(@filtrer, any: true)
      else
        @influencers = Influencer.all.order(name: :asc)
      end
    else
      @influencers = Influencer.all.order(name: :asc)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @campaign.update(update_params)
    params[:selection].strip.split.each do |id|
      CampaignInfluencer.create(campaign: @campaign, influencer: Influencer.find(id))
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

  def sum_influencer_impression
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      hsh[influencer.name] = influencer.metrics.sum(&:impression)
      end
    return hsh
  end

  def sum_influencer_like
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      hsh[influencer.name] = influencer.metrics.sum(&:click)
      end
    return hsh
  end

  def sum_influencer_comment
    hsh = Hash.new
    @campaign.influencers.each do |influencer|
      hsh[influencer.name] = influencer.metrics.sum(&:comment)
      end
    return hsh
  end

  def sum_impression_metrics
    sum = 0
    @metrics.each do |metric|
      sum += metric.impression
    end
    sum
  end

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
