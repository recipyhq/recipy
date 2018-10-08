class Prospect < ApplicationRecord
  enum kind: { producer: 'producer', user: 'user' }

  phony_normalize :phone, default_country_code: 'FR'

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: Devise.email_regexp, presence: true
  validates :phone, phony_plausible: true, allow_blank: true
end
