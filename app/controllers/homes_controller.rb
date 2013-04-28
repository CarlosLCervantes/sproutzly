class HomesController < ApplicationController
  def index
    respond_to do |format|
      format.html { render action: "index", layout: 'blank' }
    end
  end

  def subscribe
  	NewsletterContact.create!(email: params[:email])
  	Notifier.newsletter_thanks(params[:email])

  	respond_to do |format|
      format.json { render json: true }
    end
  end
end
