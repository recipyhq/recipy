require 'rails_helper'

RSpec.describe Producer::HomeController, type: :controller do
  describe "GET #index" do
    before { get :index }

    it { should respond_with(:success) }
  end
end
