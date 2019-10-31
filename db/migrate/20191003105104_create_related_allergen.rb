class CreateRelatedAllergen < ActiveRecord::Migration[5.2]
  def change
    create_table :related_allergens do |t|
      t.belongs_to :user, index: true
      t.belongs_to :allergen_tag, index: true
      t.timestamps
    end
  end
end
