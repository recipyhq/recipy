require 'rails_helper'

RSpec.describe "landing_pages/show", type: :view do
  before(:each) do
    @landing_page = assign(:landing_page, LandingPage.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
