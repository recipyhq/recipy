class CreateRelatedSaleHours < ActiveRecord::Migration[5.2]
  def change
    create_table :related_sale_hours do |t|
      t.belongs_to :point_of_sale, index: true
      t.belongs_to :openning_hour, index: true
      t.timestamps
    end
  end
end
