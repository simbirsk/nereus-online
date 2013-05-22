class Location < ActiveRecord::Base
  has_many :catches
  attr_accessible :latitude, :longitude, :name, :gmaps

  acts_as_gmappable
end
