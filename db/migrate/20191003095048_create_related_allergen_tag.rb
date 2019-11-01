class CreateRelatedAllergenTag < ActiveRecord::Migration[5.2]
  def change
    create_table :related_allergen_tags do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :allergen_tag, index: true
      t.timestamps
    end
  end
end
