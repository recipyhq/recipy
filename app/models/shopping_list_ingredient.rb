class ShoppingListIngredient < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :ingredient
  has_one :r_shp_lst_ing_quantity
  has_one :shopping_list_quantity, through: :r_shp_lst_ing_quantity, dependent: :destroy

  accepts_nested_attributes_for :shopping_list_quantity, allow_destroy: true
end
