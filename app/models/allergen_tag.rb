class AllergenTag < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :related_allergen_tags
  has_many :ingredients, through: :related_allergen_tags

  has_many :related_allergens
  has_many :users, through: :related_allergens
end
