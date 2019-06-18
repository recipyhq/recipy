class Meal < ApplicationRecord
  has_one :recipe
  # belongs_to :meal_plan
  enum :type => [:breakfast, :lunch, :dinner]
end
