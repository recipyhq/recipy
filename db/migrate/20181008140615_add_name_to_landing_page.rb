class AddNameToLandingPage < ActiveRecord::Migration[5.2]
  def change
    add_column :landing_pages, :name, :string
  end
end
