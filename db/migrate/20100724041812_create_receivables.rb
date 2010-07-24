class CreateReceivables < ActiveRecord::Migration
  def self.up
    create_table :receivables do |t|
      t.date :date
      t.integer :company_id
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :receivables
  end
end
