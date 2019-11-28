class CreateRecipeDiets < ActiveRecord::Migration[5.2]
  def up
    create_table :recipe_diets do |t|
      t.integer :diet_id
      t.integer :recipe_id

      t.timestamps
    end
  end

  def down
    drop_table :recipe_diets
  end
end
