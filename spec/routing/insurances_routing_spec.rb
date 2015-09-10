require "rails_helper"

RSpec.describe InsurancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/insurances").to route_to("insurances#index")
    end

    it "routes to #new" do
      expect(:get => "/insurances/new").to route_to("insurances#new")
    end

    it "routes to #show" do
      expect(:get => "/insurances/1").to route_to("insurances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/insurances/1/edit").to route_to("insurances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/insurances").to route_to("insurances#create")
    end

    it "routes to #update" do
      expect(:put => "/insurances/1").to route_to("insurances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/insurances/1").to route_to("insurances#destroy", :id => "1")
    end

  end
end
