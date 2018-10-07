# frozen_string_literal: true

class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  devise :database_authenticatable, :confirmable, :recoverable, :registerable,
         :rememberable, :trackable, :timeoutable, :validatable, :lockable

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
