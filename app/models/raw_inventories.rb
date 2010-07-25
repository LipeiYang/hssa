class RawInventories < ActiveRecord::Base
  attr_reader :dr, :cr
  
  def initialize(inventories)
    @dr = inventories.to_a.sum(&:dr)
    @cr = inventories.to_a.sum(&:cr)
  end
  
end
