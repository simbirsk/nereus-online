class FishingJourneysController < ApplicationController
  # GET /sessions
  # GET /sessions.json

  load_and_authorize_resource

  def index
    @fishing_journeys = FishingJourney.accessible_by(current_ability)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fishing_journeys }
    end
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
    @fishing_journey = FishingJourney.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fishing_journey }
    end
  end

  # GET /sessions/new
  # GET /sessions/new.json
  def new
    @fishing_journey = FishingJourney.new
    @fishing_journey.catches.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fishing_journey }
    end
  end

  # GET /sessions/1/edit
  def edit
    @fishing_journey = FishingJourney.find(params[:id])
  end

  # POST /sessions
  # POST /sessions.json
  def create
    @fishing_journey = FishingJourney.new(params[:fishing_journey])
    @fishing_journey.user = current_user

    respond_to do |format|
      if @fishing_journey.save
        format.html { redirect_to @fishing_journey, notice: 'Session was successfully created.' }
        format.json { render json: @fishing_journey, status: :created, location: @fishing_journey }
      else
        format.html { render action: "new" }
        format.json { render json: @fishing_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sessions/1
  # PUT /sessions/1.json
  def update
    @fishing_journey = FishingJourney.find(params[:id])

    respond_to do |format|
      if @fishing_journey.update_attributes(params[:fishing_journey])
        format.html { redirect_to @fishing_journey, notice: 'Session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fishing_journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    @fishing_journey = FishingJourney.find(params[:id])
    @fishing_journey.destroy

    respond_to do |format|
      format.html { redirect_to sessions_url }
      format.json { head :no_content }
    end
  end
end
