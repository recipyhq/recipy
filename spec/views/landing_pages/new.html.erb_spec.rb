require 'rails_helper'

RSpec.describe "landing_pages/new", type: :view do
  before(:each) do
    assign(:landing_page, LandingPage.new())
  end

  it "renders new landing_page form" do
    render

    assert_select "form[action=?][method=?]", landing_pages_path, "post" do
    end
  end
end
