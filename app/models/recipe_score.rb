class RecipeScore < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :value, presence: false, allow_blank: true
  validates :content, presence: false, allow_blank: true
end
