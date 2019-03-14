require 'rails_helper'

RSpec.describe "ShoppingLists", type: :request do
  describe "GET /shopping_lists" do
    it "works! (now write some real specs)" do
      get shopping_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
