class RelatedSaleHour < ApplicationRecord
  belongs_to :point_of_sale
  belongs_to :openning_hour
end
