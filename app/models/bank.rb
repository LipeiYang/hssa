class Bank < ActiveRecord::Base
  has_many :deposits
end
