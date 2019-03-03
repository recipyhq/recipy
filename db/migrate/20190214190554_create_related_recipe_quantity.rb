class CreateRelatedRecipeQuantity < ActiveRecord::Migration[5.2]
  def change
    create_table :related_recipe_quantities do |t|
      t.belongs_to :recipe_quantity, index: true
      t.belongs_to :quantity_type, index: true
      t.timestamps
    end
  end
end
