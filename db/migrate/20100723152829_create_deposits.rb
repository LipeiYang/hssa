class CreateDeposits < ActiveRecord::Migration
  def self.up
    create_table :deposits do |t|
      t.date :date, :null => false
      t.string :bank, :null => false
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :deposits
  end
end
