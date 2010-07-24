class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.date :date
      t.integer :materail_id
      t.decimal :dr
      t.decimal :cr

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
