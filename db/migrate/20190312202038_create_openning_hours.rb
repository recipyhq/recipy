class CreateOpenningHours < ActiveRecord::Migration[5.2]
  def change
    create_table :openning_hours do |t|
      t.time :open
      t.time :close
      t.string :day

      t.timestamps
    end
  end
end
