class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
  	User.find(session[:current_user_id]) if session[:current_user_id]
  end

  

end
