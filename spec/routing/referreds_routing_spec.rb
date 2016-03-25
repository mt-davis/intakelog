require "rails_helper"

RSpec.describe ReferredsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/referreds").to route_to("referreds#index")
    end

    it "routes to #new" do
      expect(:get => "/referreds/new").to route_to("referreds#new")
    end

    it "routes to #show" do
      expect(:get => "/referreds/1").to route_to("referreds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/referreds/1/edit").to route_to("referreds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/referreds").to route_to("referreds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/referreds/1").to route_to("referreds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/referreds/1").to route_to("referreds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/referreds/1").to route_to("referreds#destroy", :id => "1")
    end

  end
end
