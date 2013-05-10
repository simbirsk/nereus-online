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