class QuantityType < ApplicationRecord
  has_many :related_quantity_types
  has_many :quantity_equivalencies, through: :related_quantity_types
end
