class CreateShoppingListQuantity < ActiveRecord::Migration[5.2]
  def up
    create_table :shopping_list_quantities do |t|
      t.integer :value
      t.belongs_to :quantity_type, index: true
      t.timestamps
    end
  end

  def down
    drop_table :shopping_list_quantities
  end
end
