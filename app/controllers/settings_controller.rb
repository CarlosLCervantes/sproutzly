class SettingsController < ApplicationController
  # GET /settings
  # GET /settings.json
  def index

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
