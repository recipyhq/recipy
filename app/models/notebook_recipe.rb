class NotebookRecipe < ApplicationRecord
  belongs_to :notebook
  belongs_to :recipe
end
