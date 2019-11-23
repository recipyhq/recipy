class Diet < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true

    has_many :recipe_diets
    has_many :recipes, through: :recipe_diets
    has_many :user_diets
    has_many :users, through: :user_diets
end
