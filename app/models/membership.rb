class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :account, polymorphic: true, dependent: :destroy
end
