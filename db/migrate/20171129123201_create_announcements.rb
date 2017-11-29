class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string :type
      t.text :content
      t.integer :user_id
      t.integer :price
      t.integer :skill_id

      t.timestamps
    end
  end
end
