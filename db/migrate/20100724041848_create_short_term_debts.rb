class CreateShortTermDebts < ActiveRecord::Migration
  def self.up
    create_table :short_term_debts do |t|
      t.date :date
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :short_term_debts
  end
end
