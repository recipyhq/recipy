class MealPlan < ApplicationRecord
  belongs_to :user
  belongs_to :midday_starter_recipe, :class_name => "Recipe"
  belongs_to :midday_dish_recipe, :class_name => "Recipe"
  belongs_to :midday_dessert_recipe, :class_name => "Recipe"
  belongs_to :evening_starter_recipe, :class_name => "Recipe"
  belongs_to :evening_dish_recipe, :class_name => "Recipe"
  belongs_to :evening_dessert_recipe, :class_name => "Recipe"

  validates :date, presence: true
end
