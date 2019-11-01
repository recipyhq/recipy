class ShoppingListIngredient < ApplicationRecord
  enum shelf_icons: {
    meat: 'fas fa-drumstick-bite',
    fish: 'fas fa-fish',
    veggie: 'fas fa-carrot',
    fruit: "fas fa-apple-alt",
    drink: "fas fa-cocktail",
    cereal: "fas fa-seedling",
    grocery: "fas fa-shopping-basket",
    dairy: "fas fa-ice-cream",
    egg: "fas fa-egg",
    dry: "fas fa-shopping-basket",
    herb: "fas fa-pepper-hot",
    crustacean: "fas fa-fish",
    baking: "fas fa-bread-slice",
    fresh: "far fa-snowflake",
    alcohol: "fas fa-wine-bottle",
    freezer: "fas fa-snowman",
    legumes: "fas fa-seedling",
  }

  belongs_to :shopping_list
  belongs_to :ingredient
  has_one :r_shp_lst_ing_quantity
  has_one :shopping_list_quantity, through: :r_shp_lst_ing_quantity, dependent: :destroy

  accepts_nested_attributes_for :shopping_list_quantity, allow_destroy: true
end
