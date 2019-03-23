class RelatedPriceQuantity < ApplicationRecord
  belongs_to :price
  belongs_to :quantity_type
end
