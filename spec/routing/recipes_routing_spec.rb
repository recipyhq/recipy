require "rails_helper"

RSpec.describe RecipesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/beta/recipes").to route_to("recipes#index")
    end

    it "routes to #new" do
      expect(:get => "/beta/recipes/new").to route_to("recipes#new")
    end

    it "routes to #show" do
      expect(:get => "/beta/recipes/1").to route_to("recipes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/beta/recipes/1/edit").to route_to("recipes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/beta/recipes").to route_to("recipes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/beta/recipes/1").to route_to("recipes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/beta/recipes/1").to route_to("recipes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/beta/recipes/1").to route_to("recipes#destroy", :id => "1")
    end
  end
end
