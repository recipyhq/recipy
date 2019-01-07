class CreateRelatedIngredientTags < ActiveRecord::Migration[5.2]
  def change
    create_table :related_ingredient_tags do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :ingredient_tag, index: true
      t.timestamps
    end
  end
end
