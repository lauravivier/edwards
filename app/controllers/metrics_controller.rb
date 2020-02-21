class MetricsController < ApplicationController

  set_up

  def show
    @metric = Metric.find(params[:id])
  end



  def impression_influencer(campaign_id)
    @metrics2 = @metrics.where('campaign_id' == campaign_id)
    @metrics2.each do |metric|
      t[:name] = metric.influencer_id.name
      t[:impressions] = metric.impression
    end
  end


  def impression_count(campaign_id)
    t = 0
    impression_influencer(campaign_id).each do |v| t =+ v.value
    end
  end

  def like(campaign_id)
    t = 0
    metrics.select_with_index do |v| v.row[9] == 'campaign_id'
      t =+ v.row[5]
    end
  end

  def comment(campaign_id)
    t = 0
    metrics.select_with_index do |v| v.row[9] == 'campaign_id'
      t =+ v.row[6]
    end
  end

  def engagement(campaign_id)
    metrics.select_with_index do |v| v.row[9] == 'campaign_id'
      t.key = v.row[10]
      t.value = v.row[7]
      end
  end

  def engagement_rate(campaign_id)
    rate, t = 0
    engagement(campaign_id).each do |v| t =+ v.value
      rate = t / v
    end
  end

private
  def set_up
  @influencer = Influencer.find(params[:influencer_id])
  @metric.influencer_id = @influencer
  @campaign = Campaign.find(params[:id])
  end
end

