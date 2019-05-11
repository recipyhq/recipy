class RelatedProductPrice < ApplicationRecord
  belongs_to :product
  belongs_to :price

  accepts_nested_attributes_for :price
end
