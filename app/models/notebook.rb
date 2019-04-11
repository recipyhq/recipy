class Notebook < ApplicationRecord
  has_one_attached :image
  has_many :notebook_recipes, dependent: :destroy
  has_many :recipes, through: :notebook_recipes
  accepts_nested_attributes_for :recipes, allow_destroy: true
  belongs_to :user
  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
