class ChangeDataTypeForFishingJourneysDate < ActiveRecord::Migration
  def up
    change_table :fishing_journeys do |t|
      t.change :date, :datetime
    end
  end

  def down
    change_table :fishing_journeys do |t|
      t.change :date, :date
    end
  end
end
