class AddRepairOrderIdtoRepairOrderDetail < ActiveRecord::Migration
  def up
    add_column :repair_order_details, :repair_order_id, :integer
  end
  
  def down
    remove_column :repair_order_details, :repair_order_id, :integer
  end
end
