class RemoveNotesRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :score, :integer
  end
end
