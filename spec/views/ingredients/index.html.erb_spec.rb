require 'rails_helper'

RSpec.describe "ingredients/index", type: :view do
  before(:each) do
    assign(:ingredients, [Ingredient.create!, Ingredient.create!])
  end

  it "renders a list of ingredients" do
    render
  end
end
