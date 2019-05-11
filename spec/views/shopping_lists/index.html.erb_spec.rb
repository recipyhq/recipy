# require 'rails_helper'
#
# RSpec.describe "shopping_lists/index", type: :view do
#   before(:each) do
#     assign(:shopping_lists, [
#       ShoppingList.create!(
#         :name => "Name",
#         :user_id => 1
#       ),
#       ShoppingList.create!(
#         :name => "Name",
#         :user_id => 1
#       )
#     ])
#   end
#
#   it "renders a list of shopping_lists" do
#     render
#     assert_select "tr>td", :text => "Name".to_s, :count => 2
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#   end
# end
