class CreateQuantityEquivalency < ActiveRecord::Migration[5.2]
  def change
    create_table :quantity_equivalencies do |t|
      t.integer :gram_equivalency
      t.belongs_to :quantity_type, index: true
      t.timestamps
    end
  end
end
