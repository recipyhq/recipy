class RelatedRecipeIngrQuant < ApplicationRecord
  belongs_to :recipe_ingredient
  belongs_to :recipe_quantity
end
