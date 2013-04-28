class DashboardController < ApplicationController
	def index
		@works = current_user.works.all
		if(@works)
			@twitter_work_item = @works.select { |w| w.type_id == WorkType.TWITTER_FOLLOWERS }.first
			@facebook_work_item = @works.select { |w| w.type_id == WorkType.FACEBOOK_FANS }.first
			@influencer_work_item = @works.select { |w| w.type_id == WorkType.INFLUENCER }.first
			@growth_work_item = @works.select { |w| w.type_id == WorkType.GROWTH }.first
		end

		@markets = Market.all
		
		respond_to do |format|
			format.html
		end
	end
end
