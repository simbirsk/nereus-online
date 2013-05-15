# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Weather.destroy_all
Weather.create(name: 'Sunny')
Weather.create(name: 'Cloudy')
Weather.create(name: 'Foggy')
Weather.create(name: 'Rainy')
Weather.create(name: 'Stormy')

Ground.destroy_all
Ground.create(name: 'Clay')
Ground.create(name: 'Cobbles')
Ground.create(name: 'Gravel')
Ground.create(name: 'Mud')
Ground.create(name: 'Pebbles')
Ground.create(name: 'Sand')
Ground.create(name: 'Shells')
Ground.create(name: 'Silt')
Ground.create(name: 'Stone')
Ground.create(name: 'Weeds')

Species.destroy_all
Species.create(name: 'Black sea bass', scientific_name: 'Centropristis striata')
Species.create(name: 'European seabass', scientific_name: 'Dicentrarchus labrax')
