# require 'rails_helper'

# RSpec.describe "recipes/edit", type: :view do
#   before(:each) do
#     @recipe = assign(:recipe, Recipe.create!(
#       :title => "MyString",
#       :step => "MyText",
#       :time => 1,
#       :difficulty => 1,
#       :description => "MyText"
#     ))
#   end

#   it "renders the edit recipe form" do
#     render

#     assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do
#       assert_select "input[name=?]", "recipe[title]"

#       assert_select "textarea[name=?]", "recipe[step]"

#       assert_select "input[name=?]", "recipe[time]"

#       assert_select "input[name=?]", "recipe[difficulty]"

#       assert_select "textarea[name=?]", "recipe[description]"
#     end
#   end
# end
