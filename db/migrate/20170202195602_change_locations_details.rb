class ChangeLocationsDetails < ActiveRecord::Migration[5.0]
  def change
    rename_table :new_locations, :locations
    change_table :locations do |t|
      t.remove :name, :address
      t.string :city
      t.string :weather
    end
  end
end
