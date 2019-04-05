class RemoveNotesRecipes < ActiveRecord::Migration[5.2]
  def change
    safety_assured { remove_column :recipes, :score, :integer }
  end
end
