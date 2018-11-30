require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new)
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do
    end
  end
end
