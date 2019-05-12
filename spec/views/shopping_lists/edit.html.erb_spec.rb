# require 'rails_helper'
#
# RSpec.describe "shopping_lists/edit", type: :view do
#   before(:each) do
#     @shopping_list = assign(:shopping_list, ShoppingList.create!(
#       :name => "MyString",
#       :user_id => 1
#     ))
#   end
#
#   it "renders the edit shopping_list form" do
#     render
#
#     assert_select "form[action=?][method=?]", shopping_list_path(@shopping_list), "post" do
#
#       assert_select "input[name=?]", "shopping_list[name]"
#
#       assert_select "input[name=?]", "shopping_list[user_id]"
#     end
#   end
# end
