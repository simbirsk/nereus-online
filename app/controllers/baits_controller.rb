class BaitsController < ApplicationController
  # GET /baits
  # GET /baits.json
  def index
    @baits = Bait.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baits }
    end
  end

  # GET /baits/1
  # GET /baits/1.json
  def show
    @bait = Bait.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bait }
    end
  end

  # GET /baits/new
  # GET /baits/new.json
  def new
    @bait = Bait.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bait }
    end
  end

  # GET /baits/1/edit
  def edit
    @bait = Bait.find(params[:id])
  end

  # POST /baits
  # POST /baits.json
  def create
    @bait = Bait.new(params[:bait])

    respond_to do |format|
      if @bait.save
        format.html { redirect_to @bait, notice: 'Bait was successfully created.' }
        format.json { render json: @bait, status: :created, location: @bait }
      else
        format.html { render action: "new" }
        format.json { render json: @bait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baits/1
  # PUT /baits/1.json
  def update
    @bait = Bait.find(params[:id])

    respond_to do |format|
      if @bait.update_attributes(params[:bait])
        format.html { redirect_to @bait, notice: 'Bait was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baits/1
  # DELETE /baits/1.json
  def destroy
    @bait = Bait.find(params[:id])
    @bait.destroy

    respond_to do |format|
      format.html { redirect_to baits_url }
      format.json { head :no_content }
    end
  end
end
