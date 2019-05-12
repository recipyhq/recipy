class AddUserToRecipes < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :recipes, :user, foreign_key: true, index: false
    add_index :recipes, :user_id, algorithm: :concurrently
  end
end
