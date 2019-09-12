class CreateLikedProducer < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_producers do |t|
      t.integer "user_id"
      t.integer "liked_producer_id"
      t.timestamps
    end
  end
end
