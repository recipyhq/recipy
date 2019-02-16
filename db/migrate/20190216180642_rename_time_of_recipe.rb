class RenameTimeOfRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :preparation_time, :integer
    add_column :recipes, :cooking_time, :integer
  end
end
