# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

require 'active_record/fixtures'  
  
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "banks") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "cashes") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "companies") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "deposits") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "goods_costs") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "inventories") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "materials") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "paid_in_capitals") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "payables") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "receivables") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "sales") 
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "short_term_debts") 
