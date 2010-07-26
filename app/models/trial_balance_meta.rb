class TrialBalanceMeta 
  
  attr_reader :cash, 
    :deposits, :bank_deposit, 
    :receivables, :acct_rec, 
    :inventories, :raw_inventorie, 
    :payables, :acct_payable, 
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
    @payables = cal_payables
    @acct_payable = AccountPayables.new(@payables)
    @short_term_debt = cal_short_term_debt
    @paid_in_capital = cal_paid_in_capital
    @sale = cal_sale
    @goods_cost = cal_goods_cost
  end

  private
  
  def cal_cash
    cal_entities_dr_base(Cash) {|t| t.cash }
  end

  def cal_short_term_debt
    cal_entities_cr_base(ShortTermDebt) {|t| t.short_term_debt }
  end
  
  def cal_paid_in_capital
    cal_entities_cr_base(PaidInCapital) {|t| t.paid_in_capital }
  end
  
  def cal_sale
    cal_entities_cr_base(Sale) {|t| t.sale }
  end
  
  def cal_goods_cost
    cal_entities_cr_base(GoodsCost) {|t| t.goods_cost }
  end
  
  def cal_entities_dr_base(cls)
    cls.new do |o|
      o.date = @date
      o.dr = @trial_bals.sum { |t| yield(t).dr - yield(t).cr }
      o.cr = 0
    end
  end

  def cal_entities_cr_base(cls)
    cls.new do |o|
      o.date = @date
      o.dr = 0
      o.cr = @trial_bals.sum { |t| yield(t).cr - yield(t).dr }
    end
  end

  def cal_deposits
    cal_items_dr_base {|t| t.deposits}
  end

  def cal_receivables
    cal_items_dr_base {|t| t.receivables}
  end

  def cal_inventories
    cal_items_dr_base {|t| t.inventories}
  end

  def cal_payables
    cal_items_cr_base {|t| t.payables}
  end

  def cal_items_dr_base
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

  def cal_items_cr_base
    hash_deps = {}
    @trial_bals.each do |t|
      yield(t).each do |d|
        if hash_deps.has_key?(d.id)
          hash_deps[d.id].cr+=d.cr-d.dr
        else
          hash_deps[d.id]=d
          hash_deps[d.id].cr-=hash_deps[d.id].dr
          hash_deps[d.id].dr=0
        end 
      end
    end
    hash_deps.values
  end
  
end
