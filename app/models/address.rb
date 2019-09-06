class Address < ApplicationRecord

  validates :entilted, presence: true
  validates :city, presence: true
  validates :zip, presence: true

  geocoded_by :address
  after_validation :geocode, :if => lambda{ |obj| obj.entilted_changed? && obj.city_changed? && obj.zip_changed?}

  def address
    [city, zip, entilted].compact.join(', ')
  end

  has_one :related_sale_address
  has_one :point_of_sale, through: :related_sale_address
end
