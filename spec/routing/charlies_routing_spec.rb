require "rails_helper"

RSpec.describe CharliesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/charlies").to route_to("charlies#index")
    end

    it "routes to #new" do
      expect(:get => "/charlies/new").to route_to("charlies#new")
    end

    it "routes to #show" do
      expect(:get => "/charlies/1").to route_to("charlies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/charlies/1/edit").to route_to("charlies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/charlies").to route_to("charlies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/charlies/1").to route_to("charlies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/charlies/1").to route_to("charlies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/charlies/1").to route_to("charlies#destroy", :id => "1")
    end

  end
end
