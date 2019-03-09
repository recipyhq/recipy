class RecipeQuantity < ApplicationRecord
  has_one :related_recipe_quantity
  has_one :quantity_type, through: :related_recipe_quantity
  has_one :related_recipe_ingr_quant
  has_one :recipe_ingredient, through: :related_recipe_ingr_quant
end
