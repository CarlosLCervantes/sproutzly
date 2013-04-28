class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
  	#session[:current_user_id] = "517c89309a2c59d92a00000d"
  	#User.find(session[:current_user_id]) if session[:current_user_id]
  	User.where(:email => 'test@test.com').first #if session[:current_user_id]
  end

  

end
