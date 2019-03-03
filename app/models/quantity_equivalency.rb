class QuantityEquivalency < ApplicationRecord
  has_one :related_quantity_type
  has_one :quantity_type, through: :related_quantity_type
  has_one :related_quantity_equivalency
  has_one :ingredient, :through => :related_quantity_equivalency
end
