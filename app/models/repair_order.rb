class RepairOrder < ActiveRecord::Base
  validates_uniqueness_of :number
  
  has_many :repair_order_details
end
