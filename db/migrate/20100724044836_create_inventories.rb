class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.date :date, :null => false
      t.integer :material_id, :null => false
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
