class DashboardController < ApplicationController
	def index
		@twitter_handle = ""
		respond_to do |format|
			format.html
		end
	end
end
