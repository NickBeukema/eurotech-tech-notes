require 'rails_helper'

RSpec.describe "RepairOrderDetails", type: :request do
  describe "GET /repair_order_details" do
    it "works! (now write some real specs)" do
      get repair_order_details_path
      expect(response).to have_http_status(200)
    end
  end
end
