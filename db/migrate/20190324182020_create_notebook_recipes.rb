class CreateNotebookRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :notebook_recipes do |t|
      t.references :notebook, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
