class Admin::SessionsController < Admin::AdminController
  skip_before_filter :authorize

  def new
    # if admin_logged_in?
    #   respond_to do |format|
    #     redirect_to admin_root_path, notice => "You are now logged in."
    #     return
    #   end
    # end
    #@admin_session = Admin::Session.new
    respond_to do |format|
      format.html # new.html.erb
      #format.json { render json: @admin_session }
    end
  end

  def create
     if params[:user_name] == "SuperAdmin" && params[:password] == "admin"
        session[:admin_user_id] = 1
        redirect_to "/admin", notice => "Logged in!"
    else
      respond_to do |format|
        flash.now.alert = "Invalid username or password"
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    session['admin_user_id'] = nil
    redirect_to admin_root_url, notice => 'Logged out'
  end
end
