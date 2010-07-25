class TrialBalance
  include Comparable
  attr_reader :cash, 
    :deposits, :bank_deposit, 
    :receivables, :acct_rec, 
    :inventories, :raw_inventorie, 
    :acct_payable, :payables, 
    :short_term_debt, 
    :paid_in_capital, 
    :sale, 
    :goods_cost
  attr :date
  def initialize(date)
    @date = date
    @cash = Cash.find_by_date(@date)||Cash.new
    @deposits = Deposit.find_all_by_date(@date)
    @bank_deposit = BankDeposits.new(@deposits)
    @receivables = Receivable.find_all_by_date(@date)
    @acct_rec = AccountReceivables.new(@receivables)
    @inventories = Inventory.find_all_by_date(@date)
    @raw_inventorie = RawInventories.new(@inventories)
    @payables = Payable.find_all_by_date(@date)
    @acct_payable = AccountPayables.new(@payables)
    @short_term_debt = ShortTermDebt.find_by_date(@date)||ShortTermDebt.new
    @paid_in_capital = PaidInCapital.find_by_date(@date)||PaidInCapital.new
    @sale = Sale.find_by_date(@date)||Sale.new
    @goods_cost = GoodsCost.find_by_date(@date)||GoodsCost.new
  end
  
  def total_dr
    total_entities.inject(0) { |sum,item| sum += item.dr }
  end
  
  def total_cr
    total_entities.inject(0) { |sum,item| sum += item.cr }
  end

  def succ
    TrialBalance.new(@date>>1)
  end
  
  def <=>(other)
    @date <=> other.date
  end
  
  private
  def total_entities
    [@cash, @bank_deposit, @acct_rec, @raw_inventorie, @acct_payable, @short_term_debt, @paid_in_capital, @sale, @goods_cost]
  end
  
end
