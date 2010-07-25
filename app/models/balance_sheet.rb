class BalanceSheet
  attr_reader :cash_equivalents, :accounts_receivables, :inventory, 
    :total_current_assets, :gross_property_plant_equipment_net, :total_assets



  
  def initialize(date)
    @meta_trail_bal =  TrialBalanceMeta.new(date)
    @cash_equivalents = cal_cash_equivalents
    @accounts_receivables = @meta_trail_bal.acct_rec.dr
    @inventory = @meta_trail_bal.raw_inventorie.dr
    @total_current_assets = cal_total_current_assets
    @gross_property_plant_equipment_net = 0
    @total_assets = cal_total_assets
  end
  
  def cal_cash_equivalents
    @meta_trail_bal.cash.dr+@meta_trail_bal.bank_deposit.dr
  end
  
  def cal_total_current_assets
    @cash_equivalents+@accounts_receivables+@inventory
  end
  
  def cal_total_assets
    @gross_property_plant_equipment_net+@total_current_assets
  end
end
