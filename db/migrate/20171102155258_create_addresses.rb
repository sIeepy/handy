class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer "user_id"
      t.string "city"
      t.string "street_name"
      t.string "voivodeship"
      t.integer "appartment_number"
      t.integer "building_number"

      t.timestamps
    end

    drop_table :user_addresses
    add_index :addresses, :user_id
  end
end
