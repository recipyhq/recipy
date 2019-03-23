class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :value
      t.belongs_to :quantity_type, index: true
      t.timestamps
    end
  end
end
