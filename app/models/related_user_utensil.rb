class RelatedUserUtensil < ApplicationRecord
  belongs_to :user
  belongs_to :utensil
end
