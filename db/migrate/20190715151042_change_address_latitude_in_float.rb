class ChangeAddressLatitudeInFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :latitude, :float
  end
end
