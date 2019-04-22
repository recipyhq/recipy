require 'rails_helper'

RSpec.describe "Notebooks", type: :request do
  describe "GET /notebooks" do
    it "works! (now write some real specs)" do
      get notebooks_path
      expect(response).to have_http_status(200)
    end
  end
end
