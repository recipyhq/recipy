class AddisProducerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isProducer, :boolean
  end
end
