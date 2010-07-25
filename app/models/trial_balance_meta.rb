class TrialBalanceMeta 
  
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
    @cash = cal_cash
    @deposits = cal_deposits
    @bank_deposit = BankDeposits.new(@deposits)
    @receivables = cal_receivables
    @acct_rec = AccountReceivables.new(@receivables)
    @inventories = cal_inventories
    @raw_inventorie = RawInventories.new(@inventories)
    
  end

  private
  def cal_cash
    Cash.new do |o|
      o.date = @date
      o.dr = @trial_bals.sum { |t| t.cash.dr } - @trial_bals.sum { |t| t.cash.cr }
      o.cr = 0
    end
  end

  def cal_deposits
    cal_base {|t| t.deposits}
  end

  def cal_receivables
    cal_base {|t| t.receivables}
  end

  def cal_inventories
    cal_base {|t| t.inventories}
  end

  def cal_base
    hash_deps = {}
    @trial_bals.each do |t|
      yield(t).each do |d|
        if hash_deps.has_key?(d.id)
          hash_deps[d.id].dr+=d.dr-d.cr
        else
          hash_deps[d.id]=d
          hash_deps[d.id].dr-=hash_deps[d.id].cr
          hash_deps[d.id].cr=0
        end 
      end
    end
    hash_deps.values
  end
end
