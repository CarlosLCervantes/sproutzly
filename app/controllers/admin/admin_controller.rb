class Admin::AdminController < ApplicationController
	layout 'admin'
	before_filter :authorize
	helper_method :admin_logged_in


	def authorize
		unless admin_logged_in?
			redirect_to admin_login_url, notice: "Please log in"
		end
	end

	def admin_logged_in?
		session[:admin_user_id].nil? ? false : true
	end

end
