class CreateLikeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :like_ingredients do |t|
      t.belongs_to :user, index: true
      t.belongs_to :ingredient, index: true
      t.timestamps
    end
  end
end
