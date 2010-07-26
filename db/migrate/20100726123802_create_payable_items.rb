class CreatePayableItems < ActiveRecord::Migration
  def self.up
    create_table :payable_items do |t|
      t.string :name
      t.integer :seq
      t.boolean :visible

      t.timestamps
    end
  end

  def self.down
    drop_table :payable_items
  end
end
