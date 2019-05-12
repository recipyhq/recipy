class AddUserToPointOfSale < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :point_of_sales, :user, foreign_key: true, index: false
    add_index :point_of_sales, :user_id, algorithm: :concurrently
  end
end
