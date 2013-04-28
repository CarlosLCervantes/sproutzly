class InfluencersController < ApplicationController
  # GET /influencers
  # GET /influencers.json
  def index
    if(params[:market_id])
      #@influencers = Influencer.where(:market_id => params[:market_id]).take(4)
      @influencers = Market.find(params[:market_id]).influencers.limit(4)
    else
      @influencers = Influencer.all
    end

    respond_to do |format|
      #format.html # index.html.erb
      format.json { render json: @influencers }
    end
  end

  # GET /influencers/1
  # GET /influencers/1.json
  def show
    @influencer = Influencer.find(params[:id])

    respond_to do |format|
      format.html { render action: 'show', layout: nil }
      format.json { render json: @influencer }
    end
  end

  # GET /influencers/new
  # GET /influencers/new.json
  def new
    @influencer = Influencer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @influencer }
    end
  end

  # GET /influencers/1/edit
  def edit
    @influencer = Influencer.find(params[:id])
  end

  # POST /influencers
  # POST /influencers.json
  def create
    @influencer = Influencer.new(params[:influencer])

    respond_to do |format|
      if @influencer.save
        format.html { redirect_to @influencer, notice: 'Influencer was successfully created.' }
        format.json { render json: @influencer, status: :created, location: @influencer }
      else
        format.html { render action: "new" }
        format.json { render json: @influencer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /influencers/1
  # PUT /influencers/1.json
  def update
    @influencer = Influencer.find(params[:id])

    respond_to do |format|
      if @influencer.update_attributes(params[:influencer])
        format.html { redirect_to @influencer, notice: 'Influencer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @influencer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /influencers/1
  # DELETE /influencers/1.json
  def destroy
    @influencer = Influencer.find(params[:id])
    @influencer.destroy

    respond_to do |format|
      format.html { redirect_to influencers_url }
      format.json { head :no_content }
    end
  end
end
