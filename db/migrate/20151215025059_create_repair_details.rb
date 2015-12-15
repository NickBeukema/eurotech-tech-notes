class CreateRepairDetails < ActiveRecord::Migration
  def change
    create_table :repair_details do |t|
      t.integer :repair_order
      t.text :recommendations
      t.text :maintenance

      t.timestamps null: false
    end
  end
end
