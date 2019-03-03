class RecipeCategory < ApplicationRecord
  has_many :related_recipe_categories
  has_many :recipes, :through => :related_recipe_categories
end
