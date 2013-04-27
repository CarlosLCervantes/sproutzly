class Admin::AdminController < ApplicationController
	layout 'admin'
	before_filter :authorize

	def authorize
		if session[:admin_user_id]
			redirect_to root_url
		else
			redirect_to admin_login_url, notice: "Please log in"
		end
	end


end
