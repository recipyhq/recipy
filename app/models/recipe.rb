class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :time, presence: true
  validates :step, presence: true
  validates :difficulty, presence: true
  validates :description, presence: true
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_utensils
  has_many :utensils, :through => :recipe_utensils
end
