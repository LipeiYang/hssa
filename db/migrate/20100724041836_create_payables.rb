class CreatePayables < ActiveRecord::Migration
  def self.up
    create_table :payables do |t|
      t.date :date, :null => false
      t.integer :payable_item_id, :null => false
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :payables
  end
end
