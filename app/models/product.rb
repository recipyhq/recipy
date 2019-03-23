class Product < ApplicationRecord
  has_one :related_ingr_product
  has_one :ingredient, through: :related_ingr_product
  has_one :related_product_price
  has_one :price, through: :related_product_price
  has_many :related_product_tags
  has_many :product_tags, through: :related_product_tags
end
