class CreateLikedProducers < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_producers do |t|
      t.belongs_to :users, index: true
      t.belongs_to :users, index: true
      t.timestamps
    end
  end
end
