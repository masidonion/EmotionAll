class TrendsController < ApplicationController
	def index
    @recent_trends = Trend.most_recent_trends
	end

  def json
    map_info = Trend.get_json_for_tweets(params[:id])
    render json: map_info.to_json
  end
end
