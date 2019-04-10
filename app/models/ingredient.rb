class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  # has_one_attached :image
  # validates :image, presence: true
  has_many :recipe_ingredients
  has_many :recipes, :through => :recipe_ingredients
  has_many :related_ingredient_tags
  has_many :ingredient_tags, through: :related_ingredient_tags
  has_many :related_quantity_equivalencies
  has_many :quantity_equivalencies, through: :related_quantity_equivalencies

  before_save :set_defaults

  def set_defaults
    self.confirmed ||= false
  end
end
