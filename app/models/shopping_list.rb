class ShoppingList < ApplicationRecord
  validates :name, presence: true
  belongs_to :user

  has_many :shopping_list_ingredients, :dependent => :destroy
  has_many :ingredients, -> { distinct }, through: :shopping_list_ingredients

  accepts_nested_attributes_for :shopping_list_ingredients
end
