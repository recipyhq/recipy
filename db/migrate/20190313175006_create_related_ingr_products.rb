class CreateRelatedIngrProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :related_ingr_products do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
