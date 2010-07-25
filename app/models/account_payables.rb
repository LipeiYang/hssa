class AccountPayables < ActiveRecord::Base
  attr_reader :dr, :cr
  
  def initialize(payables)
    @dr = payables.to_a.sum(&:dr)
    @cr = payables.to_a.sum(&:cr)
  end
  
end
