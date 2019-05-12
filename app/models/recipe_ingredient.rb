class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  has_one :related_recipe_ingr_quant
  has_one :recipe_quantity, through: :related_recipe_ingr_quant, dependent: :destroy

  accepts_nested_attributes_for :recipe_quantity, allow_destroy: true
end
