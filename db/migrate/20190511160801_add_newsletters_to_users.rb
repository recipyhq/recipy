class AddNewslettersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :newsletters, :bool
  end
end
