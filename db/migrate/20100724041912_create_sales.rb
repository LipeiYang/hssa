class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.date :date, :null => false
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
