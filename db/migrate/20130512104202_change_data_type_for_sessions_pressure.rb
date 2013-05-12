class ChangeDataTypeForSessionsPressure < ActiveRecord::Migration
  def up
    change_table :sessions do |t|
      t.change :pressure, :float
    end
  end

  def down
    change_table :sessions do |t|
      t.change :pressure, :integer
    end
  end
end
