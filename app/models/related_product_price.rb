class RelatedProductPrice < ApplicationRecord
  belongs_to :product
  belongs_to :price
end
