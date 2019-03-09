class AddStepsToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :steps, :text, array: true
    change_column_default :recipes, :steps, []
  end
end
