class Ingredient < ApplicationRecord
  enum shelf_tag: {
    meat: 'Viandes',
    fish: 'Poissons',
    veggie: 'Légumes',
    fruit: "Fruits",
    drink: "Boissons",
    cereal: "Céréales",
    grocery: "Epicerie",
    dairy: "Produits laitiers",
    egg: "Oeufs",
    dry: "Produits secs",
    herb: "Herbes",
    crustacean: "Crustacés",
    baking: "Boulangerie",
    fresh: "Rayon frais",
    alcohol: "Alcools",
    legumes: "Légumineuses",
  }

  validates :name, presence: true, uniqueness: true
  # has_one_attached :image
  # validates :image, presence: true
  has_many :recipe_ingredients
  has_many :recipes, :through => :recipe_ingredients
  has_many :related_ingredient_tags
  has_many :ingredient_tags, through: :related_ingredient_tags
  has_many :shopping_list_ingredients, :dependent => :destroy
  has_many :shopping_lists, through: :shopping_list_ingredients
  has_many :related_quantity_equivalencies
  has_many :quantity_equivalencies, through: :related_quantity_equivalencies

  has_many :like_ingredients
  has_many :users, :through => :like_ingredients

  has_many :unlike_ingredients
  has_many :no_users, :through => :unlike_ingredients, source: :user

  before_save :set_defaults

  def set_defaults
    self.confirmed ||= false
  end
end
