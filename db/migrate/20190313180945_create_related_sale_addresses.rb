class CreateRelatedSaleAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :related_sale_addresses do |t|
      t.belongs_to :point_of_sale, index: true
      t.belongs_to :address, index: true
      t.timestamps
    end
  end
end
