require 'rails_helper'

RSpec.describe RepairOrder, :type => :model do
  
  describe 'repair order' do
    
    it 'should have a unique number' do
      ro1 = create(:repair_order, number: 10)
      expect(ro1).to be_valid
      
      ro2 = build(:repair_order, number: 10)
      expect(ro2).to be_invalid
    end
    
    it 'has many repair order details' do
      ro1 = create(:repair_order)
      rod1 = create(:repair_order_detail)
      ro1.repair_order_details << rod1
      
      expect(ro1.repair_order_details.first).to eq rod1
    end
  end
  
end
