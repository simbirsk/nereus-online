class CreateCatches < ActiveRecord::Migration
  def change
    create_table :catches do |t|
      t.datetime :datetime
      t.references :location
      t.integer :depth
      t.references :ground
      t.references :species
      t.integer :units
      t.float :weight
      t.references :gear
      t.references :bait

      t.timestamps
    end
    add_index :catches, :location_id
    add_index :catches, :ground_id
    add_index :catches, :species_id
    add_index :catches, :gear_id
    add_index :catches, :bait_id
  end
end
