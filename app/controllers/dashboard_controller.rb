class DashboardController < ApplicationController
  def index
    @fishing_journeys = FishingJourney.accessible_by(current_ability)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fishing_journeys }
    end
  end
end
