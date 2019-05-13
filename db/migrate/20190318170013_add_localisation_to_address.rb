class AddLocalisationToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :longitude, :integer
    add_column :addresses, :latitude, :integer
  end
end
