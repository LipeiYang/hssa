class CreatePayables < ActiveRecord::Migration
  def self.up
    create_table :payables do |t|
      t.date :date
      t.string :item
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :payables
  end
end
