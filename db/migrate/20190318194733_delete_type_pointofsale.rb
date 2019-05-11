class DeleteTypePointofsale < ActiveRecord::Migration[5.2]
  def change
    safety_assured do
      remove_column :point_of_sales, :type, :integer
      add_column :point_of_sales, :type, :string
    end
  end
end
