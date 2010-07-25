class BankDeposits < ActiveRecord::Base
  attr_reader :dr, :cr
  
  def initialize(deposits)
    @dr = deposits.to_a.sum(&:dr)
    @cr = deposits.to_a.sum(&:cr)
  end
  
end
