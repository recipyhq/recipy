class AddAddressToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
  end
end
