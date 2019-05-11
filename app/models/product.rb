class Product < ApplicationRecord
  has_one :related_ingr_product
  has_one :ingredient, through: :related_ingr_product
  has_one :related_product_price
  has_one :price, through: :related_product_price
  has_many :related_product_tags
  has_many :product_tags, through: :related_product_tags
  has_many :related_sale_products
  has_many :point_of_sales, through: :related_sale_products
  belongs_to :user, optional: true

  accepts_nested_attributes_for :price, allow_destroy: true
  accepts_nested_attributes_for :ingredient
end
