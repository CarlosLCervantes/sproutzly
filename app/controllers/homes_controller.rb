class HomesController < ApplicationController
  layout nil

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes, :template => nil }
    end
  end
end
