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
  has_one_attached :image
  validates :image, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
