class QuantityEquivalency < ApplicationRecord
  has_one :related_quantity_type
  has_one :quantity_type, through: :related_quantity_type
end
