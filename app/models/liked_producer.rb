class LikedProducer < ApplicationRecord
  belongs_to :user
  belongs_to :liked_producer, :class_name => "User"
end
