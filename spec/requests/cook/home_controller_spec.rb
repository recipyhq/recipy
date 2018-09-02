require 'rails_helper'

RSpec.describe Cook::HomeController, type: :request do
  describe 'GET #index' do
    before { get authenticated_cook_root_path }

    it { expect(response.status).to eq(200) }
  end
end
