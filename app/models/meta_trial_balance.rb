class MetaTrialBalance
  attr_reader :cash, 
    :deposits, :bank_deposit, 
    :receivables, :acct_rec, 
    :inventories, :raw_inventorie, 
    :acct_payable, :payables, 
    :short_term_debt, 
    :paid_in_capital, 
    :sale, 
    :goods_cost
  
  BASE_MONTH = Date.civil(2010,1,1)
  
  def initialize(date)
    @date = date
    @trial_bals =  TrialBalance.new(BASE_MONTH)..TrialBalance.new(@date)
    set_cash
  end

  private
  def set_cash
    @cash = Cash.new do |o|
      o.date = @date
      o.dr = @trial_bals.sum { |t| t.cash.dr } - @trial_bals.sum { |t| t.cash.cr }
      o.cr = 0
    end
  end

  def set_cash
    @trial_bals.each do |t|
      
    end
    
    @deposits = Deposit.new do |o|
      o.date = @date
      o.bank = 
      o.dr = @trial_bals.sum { |t| t.cash.dr } - @trial_bals.sum { |t| t.cash.cr }
      o.cr = 0
    end
  end

end
