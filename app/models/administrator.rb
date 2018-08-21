class Administrator < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable,
         :trackable, :timeoutable, :validatable, :lockable

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end
end
