class RelatedRecipeQuantity < ApplicationRecord
  belongs_to :recipe_quantity
  belongs_to :quantity_type
end
