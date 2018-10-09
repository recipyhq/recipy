class AddEmailToLandingPage < ActiveRecord::Migration[5.2]
  def change
    add_column :landing_pages, :email, :string
  end
end
