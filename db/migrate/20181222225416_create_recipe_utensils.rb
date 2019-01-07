class CreateRecipeUtensils < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_utensils do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :utensil, index: true
      t.timestamps
    end
  end
end
