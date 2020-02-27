class InfluencersController < ApplicationController

    def index
      if params["query"]
        @filtrer = params["query"]["ages"].concat(params["query"]["medias"]).concat(params["query"]["sizes"]).concat(params["query"]["locations"]).flatten.reject(&:blank?)
        @influencers = Influencer.all.global_search("#{@filtrer}").order(name: :asc)
      else
        @influencers = Influencer.all.order(name: :asc)
      end
      respond_to do |format|
        format.html
        format.js
      end
    end
end
