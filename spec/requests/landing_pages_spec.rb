require 'rails_helper'

RSpec.describe "LandingPages", type: :request do
  describe "GET /landing_pages" do
    it "works! (now write some real specs)" do
      get landing_pages_path
      expect(response).to have_http_status(200)
    end
  end
end
