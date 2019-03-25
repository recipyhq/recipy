class RecipeScore < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :value, presence: true, allow_blank: false
end
