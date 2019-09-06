class AddShelfTagToIngredient < ActiveRecord::Migration[5.2]
  def up
    add_column :ingredients, :shelf_tag, :string
  end

  def down
    remove_column :ingredients, :shelf_tag
  end
end
