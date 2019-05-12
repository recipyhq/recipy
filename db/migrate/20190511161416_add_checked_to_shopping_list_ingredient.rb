class AddCheckedToShoppingListIngredient < ActiveRecord::Migration[5.2]
  def up
    add_column :shopping_list_ingredients, :checked, :boolean
    change_column_default :shopping_list_ingredients, :checked, false
  end

  def down
    remove_column :shopping_list_ingredients, :checked
  end
end
