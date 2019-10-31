class CreateRelatedUserUtensil < ActiveRecord::Migration[5.2]
  def change
    create_table :related_user_utensils do |t|
      t.belongs_to :user, index: true
      t.belongs_to :utensil, index: true
      t.timestamps
    end
  end
end
