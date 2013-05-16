class Catch < ActiveRecord::Base
  belongs_to :fishing_journey
  # belongs_to :location
  has_one :ground
  has_one :species
  has_one :gear
  has_one :bait

  attr_accessible :datetime, :depth, :units, :weight, :ground_id, :species_id

  validates :wind_force, numericality: {greater_than_or_equal_to: 0}, :allow_blank => true
  validates :units, numericality: {greater_than_or_equal_to: 0}, :allow_blank => true
  validates :weight, numericality: {greater_than_or_equal_to: 0}, :allow_blank => true

  def message
    @species = Species.find(self.species_id)
    "Caught a #{@species.name.downcase}!"
  end
end
