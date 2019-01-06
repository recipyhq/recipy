class AddPersonToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :person, :integer
    change_column_default :recipes, :person, 1
  end
end
