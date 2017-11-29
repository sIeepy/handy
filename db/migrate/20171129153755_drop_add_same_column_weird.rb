class DropAddSameColumnWeird < ActiveRecord::Migration[5.1]
  def change
    remove_column :announcements, :type
    add_column :announcements, :type, :string
  end
end
