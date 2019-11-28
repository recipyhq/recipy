class CreateUserDiets < ActiveRecord::Migration[5.2]
  def up
    create_table :user_diets do |t|
      t.integer :diet_id
      t.integer :user_id

      t.timestamps
    end
  end

  def down
    drop_table :user_diets
  end
end
