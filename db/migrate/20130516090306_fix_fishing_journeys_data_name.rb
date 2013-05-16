class FixFishingJourneysDataName < ActiveRecord::Migration
  def change
    rename_column :fishing_journeys, :date, :datetime
  end
end
