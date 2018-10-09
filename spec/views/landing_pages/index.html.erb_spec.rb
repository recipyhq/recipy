require 'rails_helper'

RSpec.describe "landing_pages/index", type: :view do
  before(:each) do
    assign(:landing_pages, [
      LandingPage.create!(),
      LandingPage.create!()
    ])
  end

  it "renders a list of landing_pages" do
    render
  end
end
