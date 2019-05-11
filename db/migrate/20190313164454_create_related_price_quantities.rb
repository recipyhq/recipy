class CreateRelatedPriceQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :related_price_quantities do |t|
      t.belongs_to :price, index: true
      t.belongs_to :quantity_type, index: true
      t.timestamps
    end
  end
end
