class ShoppingListIngredient < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_list_ingredients do |t|
      t.belongs_to :shopping_list, index: true
      t.belongs_to :ingredient, index: true
      t.timestamps
    end
  end
end
