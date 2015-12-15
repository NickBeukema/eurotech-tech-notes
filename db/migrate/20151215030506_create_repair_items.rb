class CreateRepairItems < ActiveRecord::Migration
  def change
    create_table :repair_items do |t|
      t.text :cause
      t.text :correction
      t.text :parts

      t.timestamps null: false
    end
  end
end
