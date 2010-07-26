class PayableItem < ActiveRecord::Base
  has_many :payables
end
