class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.date :date
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
