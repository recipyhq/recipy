class Utensil < ApplicationRecord
  has_many :recipe_utensils
  has_many :recipes, :through => :recipe_utensils
end
