class SettingsController < ApplicationController
  # GET /settings
  # GET /settings.json
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    redirect_to settings_path
    return
    # respond_to do |format|
    # end
    #$stderr.print(params[:stripeToken])
  end

end
