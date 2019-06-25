class CreateRelatedShoppingListIngrQuant < ActiveRecord::Migration[5.2]
  def up
    create_table :r_shp_lst_ing_quantities do |t|
      t.belongs_to :shopping_list_ingredient, index: true
      t.belongs_to :shopping_list_quantity, index: true
      t.timestamps
    end
  end

  def down
    drop_table :r_shp_lst_ing_quantities
  end
end
