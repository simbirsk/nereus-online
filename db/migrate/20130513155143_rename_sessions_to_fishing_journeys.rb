class RenameSessionsToFishingJourneys < ActiveRecord::Migration
  def up
    rename_table :sessions, :fishing_journeys
  end

  def down
    rename_table :fishing_journeys, :sessions
  end
end
