class AddIndexToUserProfile < ActiveRecord::Migration[5.1]
  def change
    add_index :user_profiles, :user_id
  end
end
