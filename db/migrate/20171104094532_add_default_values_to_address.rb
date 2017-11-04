class AddDefaultValuesToAddress < ActiveRecord::Migration[5.1]
  def change
    change_column_default :addresses, :city, ""
    change_column_default :addresses, :street_name, ""
    change_column_default :addresses, :voivodeship, ""
    change_column_default :addresses, :appartment_number, ""
    change_column_default :addresses, :building_number, ""
  end
end
