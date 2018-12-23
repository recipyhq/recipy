require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :score => 1,
      :step => "MyText",
      :time => 1
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input[name=?]", "recipe[title]"

      assert_select "input[name=?]", "recipe[score]"

      assert_select "textarea[name=?]", "recipe[step]"

      assert_select "input[name=?]", "recipe[time]"
    end
  end
end
