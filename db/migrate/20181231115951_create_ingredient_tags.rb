class CreateIngredientTags < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
