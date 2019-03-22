class CreateRelatedRecipeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :related_recipe_categories do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :recipe_category, index: true
      t.timestamps
    end
  end
end
