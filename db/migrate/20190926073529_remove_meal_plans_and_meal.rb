class RemoveMealPlansAndMeal < ActiveRecord::Migration[5.2]
  def change
    drop_table :meals
    drop_table :meal_plans if table_exists?(:meal_plans)
  end
end
