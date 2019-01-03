class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  has_many :related_ingredient_tags
  has_many :ingredient_tags, through: :related_ingredient_tags
end
