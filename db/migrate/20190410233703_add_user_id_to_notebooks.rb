class AddUserIdToNotebooks < ActiveRecord::Migration[5.2]
  def change
    add_column :notebooks, :user_id, :integer
  end
end
