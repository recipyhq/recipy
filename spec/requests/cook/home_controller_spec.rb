require 'rails_helper'

RSpec.describe Cook::HomeController, type: :request do
  describe 'GET #index' do
    context 'unauthenticated' do
      before { get unauthenticated_cook_root_path }

      it { expect(response).to have_http_status(:ok) }
    end

    context 'authenticated' do
      before { get authenticated_cook_root_path }

      it { expect(response).to have_http_status(:ok) }
    end
  end
end
