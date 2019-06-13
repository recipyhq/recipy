class RShpLstIngQuantity < ApplicationRecord
  belongs_to :shopping_list_ingredient
  belongs_to :shopping_list_quantity
end
