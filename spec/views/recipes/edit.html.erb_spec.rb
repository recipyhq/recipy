require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :title => "MyString",
      :score => 1,
      :step => "MyText",
      :time => 1
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input[name=?]", "recipe[title]"

      assert_select "input[name=?]", "recipe[score]"

      assert_select "textarea[name=?]", "recipe[step]"

      assert_select "input[name=?]", "recipe[time]"
    end
  end
end
