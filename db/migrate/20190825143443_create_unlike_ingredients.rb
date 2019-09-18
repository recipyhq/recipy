class CreateUnlikeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :unlike_ingredients do |t|
      t.belongs_to :user, index: true
      t.belongs_to :ingredient, index: true
      t.timestamps
    end
  end
end
