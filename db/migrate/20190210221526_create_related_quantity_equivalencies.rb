class CreateRelatedQuantityEquivalencies < ActiveRecord::Migration[5.2]
  def change
    create_table :related_quantity_equivalencies do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :quantity_equivalency, index: true
      t.timestamps
    end
  end
end
