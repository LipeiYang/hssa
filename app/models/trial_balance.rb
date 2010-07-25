class TrialBalance < ActiveRecord::Base
  attr_reader :cash, :deposits, :bank_deposits, :receivables, :acct_recs, :inventories, :raw_inventories, :goods_cost, :paid_in_capital, :payables, :sale, :short_term_debt
  
  def initialize(date)
    @cash = Cash.find_by_date(date)
    @deposits = Deposit.find_all_by_date(date)
    @bank_deposits = BankDeposits.new(@deposits)
    @receivables = Receivable.find_all_by_date(date)
    @acct_recs = AccountReceivables.new(@receivables)
    @inventories = Inventory.find_all_by_date(date)
    @raw_inventories = RawInventories.new(@inventories)
    @payables = Payable.find_by_date(date)
    @short_term_debt = ShortTermDebt.find_by_date(date)
    @paid_in_capital = PaidInCapital.find_by_date(date)
    @sale = Sale.find_by_date(date)
    @goods_cost = GoodsCost.find_by_date(date)
  end
  
end
