class CreatePaidInCapitals < ActiveRecord::Migration
  def self.up
    create_table :paid_in_capitals do |t|
      t.date :date
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :paid_in_capitals
  end
end
