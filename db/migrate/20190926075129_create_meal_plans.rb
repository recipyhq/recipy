class CreateMealPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_plans do |t|
      t.datetime :date
      t.references :user, foreign_key: { to_table: 'users' }
      t.references :midday_starter_recipe, foreign_key: { to_table: 'recipes' }
      t.references :midday_dish_recipe, foreign_key: { to_table: 'recipes' }
      t.references :midday_dessert_recipe, foreign_key: { to_table: 'recipes' }
      t.references :evening_starter_recipe, foreign_key: { to_table: 'recipes' }
      t.references :evening_dish_recipe, foreign_key: { to_table: 'recipes' }
      t.references :evening_dessert_recipe, foreign_key: { to_table: 'recipes' }
      t.timestamps
    end
  end

  def down
    drop_table :meal_plans
  end
end
