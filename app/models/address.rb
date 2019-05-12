class Address < ApplicationRecord
  has_one :related_sale_address
  has_one :point_of_sale, through: :related_sale_address
end
