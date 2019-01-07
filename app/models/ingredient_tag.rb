class IngredientTag < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :related_ingredient_tags
  has_many :ingredients, through: :related_ingredient_tags
end
