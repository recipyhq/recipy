class CreateProducerAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :producer_accounts do |t|
      t.timestamps
    end
  end
end
