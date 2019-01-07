require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :step => "MyText",
      :time => 1,
      :description => "MyText2",
      :difficulty => 5
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do
      assert_select "input[name=?]", "recipe[title]"

      assert_select "textarea[name=?]", "recipe[step]"

      assert_select "input[name=?]", "recipe[time]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "input[name=?]", "recipe[difficulty]"
    end
  end
end
