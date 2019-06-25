class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :type
      t.date :date
      t.time :time
      t.boolean :done
      t.timestamps
    end
    add_index :meals, :type
  end
end
