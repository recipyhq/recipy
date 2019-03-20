require 'rails_helper'

RSpec.describe "PointOfSales", type: :request do
  describe "GET /point_of_sales" do
    it "works! (now write some real specs)" do
      get point_of_sales_path
      expect(response).to have_http_status(200)
    end
  end
end
