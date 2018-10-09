class AddFirstNameToLandingPage < ActiveRecord::Migration[5.2]
  def change
    add_column :landing_pages, :firstname, :string
  end
end
