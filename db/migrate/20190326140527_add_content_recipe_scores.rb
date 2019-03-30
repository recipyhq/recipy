class AddContentRecipeScores < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_scores, :content, :text
  end
end
