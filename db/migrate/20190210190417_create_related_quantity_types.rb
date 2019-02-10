class CreateRelatedQuantityTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :related_quantity_types do |t|
      t.belongs_to :quantity_type, index: true
      t.belongs_to :quantity_equivalency, index: true
      t.timestamps
    end
  end
end
