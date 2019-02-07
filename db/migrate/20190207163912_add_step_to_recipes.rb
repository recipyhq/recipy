class AddStepToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :step, :text
  end
end
