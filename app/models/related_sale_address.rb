class RelatedSaleAddress < ApplicationRecord
  belongs_to :point_of_sale
  belongs_to :address
end
