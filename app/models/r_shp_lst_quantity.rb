class RShpLstQuantity < ApplicationRecord
  belongs_to :shopping_list_quantity
  belongs_to :quantity_type
end
