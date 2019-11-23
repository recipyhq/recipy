class CreateDiets < ActiveRecord::Migration[5.2]
  def up
    create_table :diets do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :diets
  end
end
