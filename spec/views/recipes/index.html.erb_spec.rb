require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :title => "Title",
        :step => "MyText",
        :time => 3,
        :description => "MyText2",
        :difficulty => 5
      ),
      Recipe.create!(
        :title => "Title",
        :step => "MyText",
        :time => 3,
        :description => "MyText2",
        :difficulty => 5
      ),
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText2".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
