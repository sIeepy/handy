class AddColumnToAnnouncementTable < ActiveRecord::Migration[5.1]
  def change
    add_column :announcements, :title, :string
    add_index :announcements, :user_id
  end
end
