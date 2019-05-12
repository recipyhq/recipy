# frozen_string_literal: true

class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  devise :database_authenticatable, :confirmable, :recoverable, :registerable,
         :rememberable, :trackable, :timeoutable, :validatable, :lockable,
         :omniauthable, omniauth_providers: %i(facebook google_oauth2)

  has_one_attached :avatar

  has_one :cook_account,
          source: :account,
          source_type: 'Cook::Account',
          through: :memberships,
          dependent: :destroy

  has_one :producer_account,
          source: :account,
          source_type: 'Producer::Account',
          through: :memberships,
          dependent: :destroy

  has_many :memberships, dependent: :destroy
  has_many :recipe_scores, dependent: :destroy
  has_many :shopping_lists, dependent: :destroy
  has_many :notebooks
  has_many :recipes
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end
end
