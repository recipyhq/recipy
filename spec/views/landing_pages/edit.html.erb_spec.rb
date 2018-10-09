require 'rails_helper'

RSpec.describe "landing_pages/edit", type: :view do
  before(:each) do
    @landing_page = assign(:landing_page, LandingPage.create!())
  end

  it "renders the edit landing_page form" do
    render

    assert_select "form[action=?][method=?]", landing_page_path(@landing_page), "post" do
    end
  end
end
