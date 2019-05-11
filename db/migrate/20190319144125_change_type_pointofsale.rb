class ChangeTypePointofsale < ActiveRecord::Migration[5.2]
  def change
    safety_assured do
      remove_column :point_of_sales, :type, :integer
      add_column :point_of_sales, :market_type, :string
    end
  end
end
