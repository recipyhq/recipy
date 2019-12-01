class ChangeLatitudeToBeDecimalInAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :latitude, :decimal
    change_column :addresses, :longitude, :decimal
  end
end
