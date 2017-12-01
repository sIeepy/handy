class DropTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :skills
    drop_table :skillsets
  end
end
