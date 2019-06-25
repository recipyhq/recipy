class QuantityType < ApplicationRecord
  has_many :related_quantity_types
  has_many :quantity_equivalencies, through: :related_quantity_types
  has_many :related_recipe_quantities
  has_many :recipe_quantities, through: :related_recipe_quantities
  has_many :r_shp_lst_quantities
  has_many :shopping_list_quantities, through: :r_shp_lst_quantities
  has_many :related_price_quantities
  has_many :prices, through: :related_price_quantities
end
