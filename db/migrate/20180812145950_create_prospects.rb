class CreateProspects < ActiveRecord::Migration[5.2]
  def change
    create_table :prospects do |t|
      t.string :kind, default: 'producer'
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone

      t.timestamps
    end
  end
end
