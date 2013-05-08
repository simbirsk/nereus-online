class Session < ActiveRecord::Base
  belongs_to :weather
  attr_accessible :date, :pressure, :swell, :temperature, :wind_direction, :wind_force
end
