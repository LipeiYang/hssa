class AddBankIdRemoveBankToDeposit < ActiveRecord::Migration
  def self.up
    add_column :deposits, :bank_id, :integer
    remove_column :deposits, :bank
  end

  def self.down
    add_column :deposits, :bank, :string
    remove_column :deposits, :bank_id
  end
end
