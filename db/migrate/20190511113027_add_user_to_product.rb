class AddUserToProduct < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :products, :user, foreign_key: true, index: false
    add_index :products, :user_id, algorithm: :concurrently
  end
end
