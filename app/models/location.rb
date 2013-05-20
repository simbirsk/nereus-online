class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :gmaps

  acts_as_gmappable
end
