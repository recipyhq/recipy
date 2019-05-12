class CreateRelatedProductTags < ActiveRecord::Migration[5.2]
  def change
    create_table :related_product_tags do |t|
      t.belongs_to :product, index: true
      t.belongs_to :product_tag, index: true
      t.timestamps
    end
  end
end
