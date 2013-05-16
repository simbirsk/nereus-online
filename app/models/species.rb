class Species < ActiveRecord::Base
  has_many :catches
  attr_accessible :description, :name, :scientific_name
end
