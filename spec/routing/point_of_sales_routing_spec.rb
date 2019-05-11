require "rails_helper"

RSpec.describe PointOfSalesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/beta/point_of_sales").to route_to("point_of_sales#index")
    end

    it "routes to #new" do
      expect(:get => "/beta/point_of_sales/new").to route_to("point_of_sales#new")
    end

    it "routes to #show" do
      expect(:get => "/beta/point_of_sales/1").to route_to("point_of_sales#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/beta/point_of_sales/1/edit").to route_to("point_of_sales#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/beta/point_of_sales").to route_to("point_of_sales#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/beta/point_of_sales/1").to route_to("point_of_sales#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/beta/point_of_sales/1").to route_to("point_of_sales#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/beta/point_of_sales/1").to route_to("point_of_sales#destroy", :id => "1")
    end
  end
end
