class ChangeAddressLongitudeInFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :longitude, :float
  end
end
