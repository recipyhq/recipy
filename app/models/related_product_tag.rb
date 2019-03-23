class RelatedProductTag < ApplicationRecord
  belongs_to :product
  belongs_to :product_tag
end
