class CreateBaits < ActiveRecord::Migration
  def change
    create_table :baits do |t|
      t.string :name

      t.timestamps
    end
  end
end
