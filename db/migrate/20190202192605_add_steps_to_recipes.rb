class AddStepsToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :steps, :text, array: true
  end
end
