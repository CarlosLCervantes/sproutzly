class DashboardController < ApplicationController
	def index
		@works = current_user.works.all
		@twitter_work_item = @works.select { |w| w.type_id == WorkType.TWITTER_FOLLOWERS }.first

		@markets = Market.all
		
		respond_to do |format|
			format.html
		end
	end
end
