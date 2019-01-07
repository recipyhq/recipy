class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_many :recipe_ingredients
  has_many :recipes, :through => :recipe_ingredients
  has_many :related_ingredient_tags
  has_many :ingredient_tags, through: :related_ingredient_tags
end
