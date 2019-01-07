class DropStuffs < ActiveRecord::Migration[5.2]
  def change
    drop_table :stuffs
  end
end
