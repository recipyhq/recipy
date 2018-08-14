# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :database_authenticatable, :omniauthable, :confirmable, :recoverable, :registerable,
         :rememberable, :trackable, :timeoutable, :validatable, :lockable

  include DeviseTokenAuth::Concerns::User

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
end
