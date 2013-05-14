class AddFishingJourneyToCatches < ActiveRecord::Migration
  def change
    add_column :catches, :fishing_journey_id, :integer
  end
end
