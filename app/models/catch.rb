class Catch < ActiveRecord::Base
  belongs_to :location
  belongs_to :ground
  belongs_to :species
  belongs_to :gear
  belongs_to :bait
  attr_accessible :datetime, :depth, :units, :weight
end
