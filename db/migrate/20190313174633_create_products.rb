class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.belongs_to :ingredient, index: true
      t.timestamps
    end
  end
end
