class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :phone_number

      t.timestamps
    end
  end
end
