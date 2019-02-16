class CreateRelatedRecipeIngrQuant < ActiveRecord::Migration[5.2]
  def change
    create_table :related_recipe_ingr_quants do |t|
      t.belongs_to :recipe_ingredient, index: true
      t.belongs_to :recipe_quantity, index: true
      t.timestamps
    end
  end
end
