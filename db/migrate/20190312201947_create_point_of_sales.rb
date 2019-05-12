class CreatePointOfSales < ActiveRecord::Migration[5.2]
  def change
    create_table :point_of_sales do |t|
      t.string :name
      t.string :description
      t.string :market_type

      t.timestamps
    end
  end
end
