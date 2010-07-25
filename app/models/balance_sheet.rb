class BalanceSheet
  attr_reader :cash_equivalents
  
  def initialize(date)
    @meta_trail_bal =  MetaTrialBalance.new(date)
    @cash_equivalents = cal_cash_equivalents
  end
  
  def cal_cash_equivalents
    @meta_trail_bal.cash.dr
  end
  
end
