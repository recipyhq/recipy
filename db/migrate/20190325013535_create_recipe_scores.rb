class CreateRecipeScores < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_scores do |t|
      t.integer :value
      t.references :recipe
      t.references :user

      t.timestamps
    end
  end
end
