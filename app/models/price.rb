class Price < ApplicationRecord
  validates :value, presence: true
  has_one :related_price_quantity
  has_one :quantity_type, through: :related_price_quantity
end
