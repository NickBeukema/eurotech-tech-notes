class CreateRepairOrderDetails < ActiveRecord::Migration
  def change
    create_table :repair_order_details do |t|
      t.text :cause
      t.text :correction
      t.text :parts

      t.timestamps null: false
    end
  end
end
