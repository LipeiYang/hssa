class CreateCogs < ActiveRecord::Migration
  def self.up
    create_table :cogs do |t|
      t.date :date
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :cogs
  end
end
