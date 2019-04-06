class AddViewToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :view, :integer
    change_column_default :recipes, :view, 0
  end
end
