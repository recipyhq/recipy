class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :entilted
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
