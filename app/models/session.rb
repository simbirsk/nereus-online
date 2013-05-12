class Session < ActiveRecord::Base
  belongs_to :weather
  belongs_to :user
  attr_accessible :date, :pressure, :swell, :temperature, :wind_direction, :wind_force
end
