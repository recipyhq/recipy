class OpenningHour < ApplicationRecord
  has_one :point_of_sale, through: :related_sale_hours
end
