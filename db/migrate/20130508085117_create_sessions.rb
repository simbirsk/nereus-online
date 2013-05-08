class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.date :date
      t.integer :wind_direction
      t.integer :wind_force
      t.references :weather
      t.integer :temperature
      t.integer :pressure
      t.integer :swell

      t.timestamps
    end
    add_index :sessions, :weather_id
  end
end
