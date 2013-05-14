class Catch < ActiveRecord::Base
  belongs_to :fishing_journey
  belongs_to :location
  has_one :ground
  has_one :species
  belongs_to :gear
  belongs_to :bait

  attr_accessible :datetime, :depth, :units, :weight
end
