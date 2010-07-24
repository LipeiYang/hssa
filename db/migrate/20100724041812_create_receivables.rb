class CreateReceivables < ActiveRecord::Migration
  def self.up
    create_table :receivables do |t|
      t.date :date, :null => false
      t.integer :company_id, :null => false
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :receivables
  end
end
