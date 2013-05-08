# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130508091519) do

  create_table "baits", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "catches", :force => true do |t|
    t.datetime "datetime"
    t.integer  "location_id"
    t.integer  "depth"
    t.integer  "ground_id"
    t.integer  "species_id"
    t.integer  "units"
    t.float    "weight"
    t.integer  "gear_id"
    t.integer  "bait_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "catches", ["bait_id"], :name => "index_catches_on_bait_id"
  add_index "catches", ["gear_id"], :name => "index_catches_on_gear_id"
  add_index "catches", ["ground_id"], :name => "index_catches_on_ground_id"
  add_index "catches", ["location_id"], :name => "index_catches_on_location_id"
  add_index "catches", ["species_id"], :name => "index_catches_on_species_id"

  create_table "gears", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "grounds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.date     "date"
    t.integer  "wind_direction"
    t.integer  "wind_force"
    t.integer  "weather_id"
    t.integer  "temperature"
    t.integer  "pressure"
    t.integer  "swell"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "sessions", ["weather_id"], :name => "index_sessions_on_weather_id"

  create_table "species", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "weathers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
