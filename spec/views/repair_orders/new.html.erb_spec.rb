require 'rails_helper'

RSpec.describe "repair_orders/new", :type => :view do
  before(:each) do
    assign(:repair_order, RepairOrder.new(
      :number => 1,
      :recommendations => "MyText",
      :maintenance => "MyText"
    ))
  end

  it "renders new repair_order form" do
    render

    assert_select "form[action=?][method=?]", repair_orders_path, "post" do

      assert_select "input#repair_order_number[name=?]", "repair_order[number]"

      assert_select "textarea#repair_order_recommendations[name=?]", "repair_order[recommendations]"

      assert_select "textarea#repair_order_maintenance[name=?]", "repair_order[maintenance]"
    end
  end
end
