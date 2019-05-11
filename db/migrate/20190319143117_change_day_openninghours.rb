class ChangeDayOpenninghours < ActiveRecord::Migration[5.2]
  def change
    safety_assured do
      remove_column :openning_hours, :day, :integer
      add_column :openning_hours, :day, :string
    end
  end
end
