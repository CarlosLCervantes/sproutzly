class HomesController < ApplicationController
  def index
    respond_to do |format|
      format.html { render action: "index", layout: 'blank' }
    end
  end
end
