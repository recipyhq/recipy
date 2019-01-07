class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :score
      t.text :description
      t.text :step
      t.integer :difficulty
      t.integer :time
      t.timestamps
    end
  end
end
