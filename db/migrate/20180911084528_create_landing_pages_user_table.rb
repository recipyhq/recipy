class CreateLandingPagesUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :landing_pages_user_tables do |t|
      t.string :name
      t.string :firstName
      t.string :email
    end
  end
end
