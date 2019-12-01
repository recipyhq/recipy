class PointOfSale < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :market_type, presence: true
  has_many :related_sale_hours
  has_many :openning_hours, through: :related_sale_hours
  has_one :related_sale_address
  has_one :address, through: :related_sale_address
  has_many :related_sale_products
  has_many :products, through: :related_sale_products
  belongs_to :user, optional: true

  accepts_nested_attributes_for :products
  accepts_nested_attributes_for :address, :allow_destroy => true
  accepts_nested_attributes_for :openning_hours, :allow_destroy => true
end
