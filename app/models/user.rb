# frozen_string_literal: true

class  User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  validates :first_name, presence: true
  validates :last_name, presence: true

  after_initialize do |user|
    user.newsletters = false
    user.isProducer = false
  end

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
  has_many :point_of_sales

  has_many :like_ingredients, dependent: :destroy
  has_many :ingredients, through: :like_ingredients

  has_many :unlike_ingredients, dependent: :destroy
  has_many :no_like_ingredients, through: :unlike_ingredients, source: :ingredient

  has_many :related_allergens, dependent: :destroy
  has_many :allergens, through: :related_allergens, source: :allergen_tag

  has_many :related_user_utensils, dependent: :destroy
  has_many :utensils, through: :related_user_utensils, source: :utensil

  has_many :related_liked_producers, :class_name => 'LikedProducer'
  has_many :liked_producers, through: :related_liked_producers, source: :liked_producer

  has_many :inverse_related_liked_producers, class_name: 'LikedProducer',
                                             :foreign_key => "liked_producer_id"
  has_many :followed_users, through: :inverse_related_liked_producers, :source => :user

  has_many :user_diets
  has_many :diets, through: :user_diets

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
