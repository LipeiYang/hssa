class CreatePaidInCapitals < ActiveRecord::Migration
  def self.up
    create_table :paid_in_capitals do |t|
      t.date :date, :null => false
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :paid_in_capitals
  end
end
