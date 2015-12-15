require 'rails_helper'

RSpec.describe "repair_orders/show", :type => :view do
  before(:each) do
    @repair_order = assign(:repair_order, RepairOrder.create!(
      :number => 1,
      :recommendations => "MyText",
      :maintenance => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
