class RelatedAllergenTag < ApplicationRecord
  belongs_to :ingredient
  belongs_to :allergen_tag
end
