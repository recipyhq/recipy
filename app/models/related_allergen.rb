class RelatedAllergen < ApplicationRecord
  belongs_to :allergen_tag
  belongs_to :user
end
