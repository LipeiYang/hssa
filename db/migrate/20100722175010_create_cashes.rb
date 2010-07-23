class CreateCashes < ActiveRecord::Migration
  def self.up
    create_table :cashes do |t|
      t.decimal :dr, :default => 0, :scale => 2, :null => false
      t.decimal :cr, :default => 0, :scale => 2, :null => false
      t.date :date, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :cashes
  end
end
