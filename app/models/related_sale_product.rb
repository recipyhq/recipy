class RelatedSaleProduct < ApplicationRecord
  belongs_to :point_of_sale
  belongs_to :product
end
