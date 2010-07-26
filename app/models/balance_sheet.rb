class BalanceSheet
  attr_reader :cash_equivalents, 
    :accounts_receivables, 
    :inventory, 
    :total_current_assets, 
    :gross_property_plant_equipment_net, 
    :total_assets,
    :accounts_payables,
    :short_term_debt,
    :total_current_liabilities,
    :long_term_debt,
    :interest_payables,
    :total_liabilities,
    :share_capital,
    :retained_earnings_prior,
    :dividends_paid,
    :current_year_retained_earnings,
    :total_stockholders_equity,
    :total_liabilities_and_stockholders_equity

  
  def initialize(date)
    @meta_trail_bal =  TrialBalanceMeta.new(date)
    @cash_equivalents = cal_cash_equivalents
    @accounts_receivables = @meta_trail_bal.acct_rec.dr
    @inventory = @meta_trail_bal.raw_inventorie.dr
    @total_current_assets = cal_total_current_assets
    @gross_property_plant_equipment_net = 0
    @total_assets = cal_total_assets
    @accounts_payables = @meta_trail_bal.acct_payable.cr
    @short_term_debt = @meta_trail_bal.short_term_debt.cr
    @total_current_liabilities = cal_total_current_liabilities
    @long_term_debt = @meta_trail_bal.short_term_debt.dr
    @interest_payables = 0
    @total_liabilities = cal_total_liabilities
    @share_capital = @meta_trail_bal.paid_in_capital.cr
    @retained_earnings_prior = 0
    @dividends_paid = 0
    @current_year_retained_earnings = 49000
    @total_stockholders_equity = cal_total_stockholders_equity
    @total_liabilities_and_stockholders_equity = cal_total_liabilities_and_stockholders_equity
  end
  
  def cal_cash_equivalents
    @meta_trail_bal.cash.dr+
    @meta_trail_bal.bank_deposit.dr
  end
  
  def cal_total_current_assets
    @cash_equivalents+
    @accounts_receivables+
    @inventory
  end
  
  def cal_total_assets
    @gross_property_plant_equipment_net+
    @total_current_assets
  end
  
  def cal_total_current_liabilities
    @accounts_payables+
    @short_term_debt
  end
  
  def cal_total_liabilities
    @total_current_liabilities+
    @long_term_debt+
    @interest_payables
  end
  
  def cal_total_stockholders_equity
    @share_capital+
    @retained_earnings_prior+
    @dividends_paid+
    @current_year_retained_earnings
  end
  
  def cal_total_liabilities_and_stockholders_equity
    @total_liabilities+
    @total_stockholders_equity
  end
end
