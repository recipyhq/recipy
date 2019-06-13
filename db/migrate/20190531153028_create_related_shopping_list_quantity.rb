class CreateRelatedShoppingListQuantity < ActiveRecord::Migration[5.2]
  def up
    create_table :r_shp_lst_quantities do |t|
      t.belongs_to :shopping_list_quantity, index: true
      t.belongs_to :quantity_type, index: true
      t.timestamps
    end
  end

  def down
    drop_table :r_shp_lst_quantities
  end
end
