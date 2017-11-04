class AddDefoultValuesToProfile < ActiveRecord::Migration[5.1]
  def change
    change_column_default :profiles, :first_name, ""
    change_column_default :profiles, :last_name, ""
    change_column_default :profiles, :phone_number, ""
  end
end
