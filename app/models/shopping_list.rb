class ShoppingList < ApplicationRecord
  belongs_to :user

  has_many :shopping_list_ingredients
  has_many :ingredients, through: :shopping_list_ingredients
end
