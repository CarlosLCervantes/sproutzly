class SessionsController < ApplicationController
  def new
    #@session = Session.new

    respond_to do |format|
      format.html { render action: 'new' }
      format.json { render json: @session }
    end
  end

  def create
    #@session = Session.new(params[:session])
    @user = User.where(:email => params[:email], :password => params[:password])

    respond_to do |format|
      if @user
        format.html { redirect_to dashboard_url, notice: 'You are now logged in' }
        #format.json { render json: @session, status: :created, location: @session }
      else
        format.html { render action: "new", error: 'Login failed' }
        #format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    session[:current_user_id] = nil

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
end
