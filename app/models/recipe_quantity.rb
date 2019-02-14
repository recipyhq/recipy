class RecipeQuantity < ApplicationRecord
  has_one :related_recipe_quantity
  has_one :quantity_type, through: :related_recipe_quantity
end
