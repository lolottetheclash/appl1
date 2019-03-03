require "rails_helper"

RSpec.describe AvisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/avis").to route_to("avis#index")
    end

    it "routes to #new" do
      expect(:get => "/avis/new").to route_to("avis#new")
    end

    it "routes to #show" do
      expect(:get => "/avis/1").to route_to("avis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/avis/1/edit").to route_to("avis#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/avis").to route_to("avis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/avis/1").to route_to("avis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/avis/1").to route_to("avis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/avis/1").to route_to("avis#destroy", :id => "1")
    end
  end
end
