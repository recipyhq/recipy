require 'rails_helper'

RSpec.describe "ingredients/show", type: :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!)
  end

  it "renders attributes in <p>" do
    render
  end
end
