class Catch < ActiveRecord::Base
  belongs_to :fishing_journey
  # belongs_to :location
  has_one :ground
  has_one :species
  has_one :gear
  has_one :bait

  attr_accessible :datetime, :depth, :units, :weight, :ground_id, :species_id
end
