class Species < ActiveRecord::Base
  attr_accessible :description, :name, :scientific_name
end
