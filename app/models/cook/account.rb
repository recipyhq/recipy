class Cook::Account < ApplicationRecord
  has_one :membership, dependent: :destroy
  has_one :user, through: :membership
end
