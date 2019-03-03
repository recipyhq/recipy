class RelatedQuantityType < ApplicationRecord
  belongs_to :quantity_type
  belongs_to :quantity_equivalency
end
