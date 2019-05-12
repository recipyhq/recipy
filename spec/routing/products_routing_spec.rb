require "rails_helper"

RSpec.describe ProductsController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(:get => "/beta/products/new").to route_to("products#new")
    end

    it "routes to #edit" do
      expect(:get => "/beta/products/1/edit").to route_to("products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/beta/products").to route_to("products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/beta/products/1").to route_to("products#update", :id => "1")
    end
  end
end
