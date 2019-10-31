class Utensil < ApplicationRecord
  has_many :recipe_utensils
  has_many :recipes, :through => :recipe_utensils

  has_many :related_user_utensils
  has_many :utensils, :through => :related_user_utensils, source: :utensil
end
