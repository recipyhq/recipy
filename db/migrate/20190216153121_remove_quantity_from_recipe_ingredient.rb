class RemoveQuantityFromRecipeIngredient < ActiveRecord::Migration[5.2]
  def change
    safety_assured { remove_column :recipe_ingredients, :quantity }
    safety_assured { remove_column :recipe_ingredients, :recipe_quantities_id }
  end
end
