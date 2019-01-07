class RelatedIngredientTag < ApplicationRecord
  belongs_to :ingredient
  belongs_to :ingredient_tag
end
