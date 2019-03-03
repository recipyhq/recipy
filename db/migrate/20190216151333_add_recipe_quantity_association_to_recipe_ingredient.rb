class AddRecipeQuantityAssociationToRecipeIngredient < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :recipe_ingredients, :recipe_quantity, index: false
    add_index :recipe_ingredients, :recipe_quantity_id, algorithm: :concurrently
  end
end
