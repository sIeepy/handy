class CheckingSomething < ActiveRecord::Migration[5.1]
  def change
    remove_column :announcements, :type
    add_column :announcements, :announ_type, :string
  end
end
