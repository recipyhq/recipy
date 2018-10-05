# frozen_string_literal: true

class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  devise :database_authenticatable, :confirmable, :recoverable, :registerable,
         :rememberable, :trackable, :timeoutable, :validatable, :lockable,
         :omniauthable, omniauth_providers: %i(google_oauth2)

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

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end

  def confirmed?
    confirmed_at.present?
  end

  def unconfirmed?
    !confirmed?
  end

  def locked?
    locked_at.present?
  end

  def unlocked?
    !locked?
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
