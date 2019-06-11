class ShoppingListQuantity < ApplicationRecord
  has_one :r_shp_lst_quantity
  has_one :quantity_type, through: :r_shp_lst_quantity
  has_one :r_shp_lst_ing_quantity
  has_one :shopping_list_ingredient, through: :r_shp_lst_ing_quantity
end
