class CreateMaterails < ActiveRecord::Migration
  def self.up
    create_table :materails do |t|
      t.string :name
      t.integer :seq
      t.boolean :visible

      t.timestamps
    end
  end

  def self.down
    drop_table :materails
  end
end
