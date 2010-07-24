class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.string :name, :null => false
      t.integer :seq
      t.boolean :visible

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
