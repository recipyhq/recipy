class AddIngredientsValidation < ActiveRecord::Migration[5.2]
  def up
    add_column :ingredients, :confirmed, :boolean
    change_column_default :ingredients, :confirmed, false
  end

  def down
    remove_column :ingredients, :confirmed
  end
end
