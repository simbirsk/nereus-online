class Catch < ActiveRecord::Base
  belongs_to :fishing_journey
  # belongs_to :location
  has_one :ground
  belongs_to :species
  has_one :gear
  has_one :bait

  attr_accessible :datetime, :depth, :units, :weight, :ground_id, :species_id

  validates :units, numericality: {greater_than_or_equal_to: 0}, allow_blank: true
  validates :weight, numericality: {greater_than_or_equal_to: 0}, allow_blank: true

  validates :datetime, presence: true, date_is_past: true
end
