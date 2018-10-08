class CreateCookAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :cook_accounts do |t|
      t.timestamps
    end
  end
end
