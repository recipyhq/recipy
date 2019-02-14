class QuantityType < ApplicationRecord
  has_many :related_quantity_types
  has_many :quantity_equivalencies, through: :related_quantity_types
  has_many :related_recipe_quantities
  has_many :recipe_quantities, through: :related_recipe_quantities
end
