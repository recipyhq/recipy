class CreateLandingPages < ActiveRecord::Migration[5.2]
  def change
    create_table :landing_pages do |t|

      t.timestamps
    end
  end
end
