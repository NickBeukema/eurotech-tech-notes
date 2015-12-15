require 'rails_helper'

RSpec.describe "repair_orders/edit", :type => :view do
  before(:each) do
    @repair_order = assign(:repair_order, RepairOrder.create!(
      :number => 1,
      :recommendations => "MyText",
      :maintenance => "MyText"
    ))
  end

  it "renders the edit repair_order form" do
    render

    assert_select "form[action=?][method=?]", repair_order_path(@repair_order), "post" do

      assert_select "input#repair_order_number[name=?]", "repair_order[number]"

      assert_select "textarea#repair_order_recommendations[name=?]", "repair_order[recommendations]"

      assert_select "textarea#repair_order_maintenance[name=?]", "repair_order[maintenance]"
    end
  end
end
