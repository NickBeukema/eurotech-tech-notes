require 'rails_helper'

RSpec.describe "repair_orders/index", :type => :view do
  before(:each) do
    assign(:repair_orders, [
      RepairOrder.create!(
        :number => 1,
        :recommendations => "MyText",
        :maintenance => "MyText"
      ),
      RepairOrder.create!(
        :number => 1,
        :recommendations => "MyText",
        :maintenance => "MyText"
      )
    ])
  end

  it "renders a list of repair_orders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
