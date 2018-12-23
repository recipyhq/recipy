class DropRecipes < ActiveRecord::Migration[5.2]
  def change
    drop_table :recipes
  end
end
