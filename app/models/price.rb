class Price < ApplicationRecord
  has_one :related_price_quantity
  has_one :quantity_type, through: :related_price_quantity
end
