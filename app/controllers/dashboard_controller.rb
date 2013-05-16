class DashboardController < ApplicationController
  def index
    @fishing_journeys = FishingJourney.accessible_by(current_ability)
    @catches = Catch.accessible_by(current_ability)
    @activities = (@fishing_journeys + @catches).sort{|a,b| a.datetime <=> b.datetime }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fishing_journeys }
    end
  end
end
