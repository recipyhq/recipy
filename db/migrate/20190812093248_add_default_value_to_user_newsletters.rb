class AddDefaultValueToUserNewsletters < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :newsletters, false, false
    change_column_null :users, :isProducer, false, false
    User.where(newsletters: nil).update_all(newsletters: false)
    User.where(isProducer: nil).update_all(isProducer: false)
  end
end
