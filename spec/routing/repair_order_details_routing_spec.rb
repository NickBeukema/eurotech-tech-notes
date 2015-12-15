require "rails_helper"

RSpec.describe RepairOrderDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/repair_order_details").to route_to("repair_order_details#index")
    end

    it "routes to #new" do
      expect(:get => "/repair_order_details/new").to route_to("repair_order_details#new")
    end

    it "routes to #show" do
      expect(:get => "/repair_order_details/1").to route_to("repair_order_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/repair_order_details/1/edit").to route_to("repair_order_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/repair_order_details").to route_to("repair_order_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/repair_order_details/1").to route_to("repair_order_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/repair_order_details/1").to route_to("repair_order_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/repair_order_details/1").to route_to("repair_order_details#destroy", :id => "1")
    end

  end
end
