class AccountReceivables < ActiveRecord::Base
  attr_reader :dr, :cr
  
  def initialize(receivables)
    @dr = receivables.to_a.sum(&:dr)
    @cr = receivables.to_a.sum(&:cr)
  end
  
end
