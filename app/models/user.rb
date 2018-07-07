class User < ActiveRecord::Base
  devise :database_authenticatable, :omniauthable, :confirmable, :recoverable, :registerable,
         :rememberable, :trackable, :timeoutable, :validatable, :lockable

  include DeviseTokenAuth::Concerns::User
end
