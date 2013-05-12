class Session < ActiveRecord::Base
  belongs_to :weather
  belongs_to :user

  attr_accessible :date, :pressure, :swell, :temperature, :wind_direction, :wind_force, :user

  validates :wind_force, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 12}, :allow_blank => true
  validates :wind_direction, numericality: {greater_than_or_equal_to: 0, less_than: 360}, :allow_blank => true
  validates :temperature, numericality: {greater_than_or_equal_to: -50, less_than_or_equal_to: 50}, :allow_blank => true
  validates :pressure, numericality: {greater_than_or_equal_to: 870, less_than_or_equal_to: 1085}, :allow_blank => true
  validates :swell, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 16}, :allow_blank => true
end
