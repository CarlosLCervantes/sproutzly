class WorksController < ApplicationController
  # POST /works
  # POST /works.json
  def create
    #TODO: Make sure user can't order another of the same type
    #Make sure current user exists
    @user = current_user
    @work = Work.new(params[:work])
    # if(@work.type_id == WorkType.TWITTER_FOLLOWERS)
    #   user.twitter_handle = 
    # end
    @work.update_to_created
    @user.works << @work


    respond_to do |format|
      if @user.save!
        #format.html { redirect_to @work, notice: 'Work was successfully created.' }
        format.json { render json: @work, status: :created }
      else
        #format.html { render action: "new" }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /works/1
  # PUT /works/1.json
  def update
    @work = Work.find(params[:id])

    respond_to do |format|
      if @work.update_attributes(params[:work])
        format.html { redirect_to @work, notice: 'Work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work = Work.find(params[:id])
    @work.destroy

    respond_to do |format|
      format.html { redirect_to works_url }
      format.json { head :no_content }
    end
  end
end

# # GET /works
# # GET /works.json
# def index
#   @works = Work.all

#   respond_to do |format|
#     format.html # index.html.erb
#     format.json { render json: @works }
#   end
# end

# # GET /works/1
# # GET /works/1.json
# def show
#   @work = Work.find(params[:id])

#   respond_to do |format|
#     format.html # show.html.erb
#     format.json { render json: @work }
#   end
# end

# # GET /works/new
# # GET /works/new.json
# def new
#   @work = Work.new

#   respond_to do |format|
#     format.html # new.html.erb
#     format.json { render json: @work }
#   end
# end

# # GET /works/1/edit
# def edit
#   @work = Work.find(params[:id])
# end
