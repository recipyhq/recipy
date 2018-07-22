class Producer < ApplicationRecord
  devise :database_authenticatable, :omniauthable, :confirmable, :recoverable, :registerable,
         :rememberable, :trackable, :timeoutable, :validatable, :lockable

  include DeviseTokenAuth::Concerns::User

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end
end
