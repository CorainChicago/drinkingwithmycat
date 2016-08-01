require "rails_helper"

RSpec.describe ListOfImportancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/list_of_importances").to route_to("list_of_importances#index")
    end

    it "routes to #new" do
      expect(:get => "/list_of_importances/new").to route_to("list_of_importances#new")
    end

    it "routes to #show" do
      expect(:get => "/list_of_importances/1").to route_to("list_of_importances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/list_of_importances/1/edit").to route_to("list_of_importances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/list_of_importances").to route_to("list_of_importances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/list_of_importances/1").to route_to("list_of_importances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/list_of_importances/1").to route_to("list_of_importances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/list_of_importances/1").to route_to("list_of_importances#destroy", :id => "1")
    end

  end
end
