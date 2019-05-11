class CreateRelatedProductPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :related_product_prices do |t|
      t.belongs_to :product, index: true
      t.belongs_to :price, index: true
      t.timestamps
    end
  end
end
