# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100726123802) do

  create_table "banks", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "seq"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cashes", :force => true do |t|
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.date     "date",                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "seq"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deposits", :force => true do |t|
    t.date     "date",                        :null => false
    t.integer  "bank_id",                     :null => false
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goods_costs", :force => true do |t|
    t.date     "date",                        :null => false
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", :force => true do |t|
    t.date     "date",                         :null => false
    t.integer  "material_id",                  :null => false
    t.decimal  "dr",          :default => 0.0, :null => false
    t.decimal  "cr",          :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "seq"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paid_in_capitals", :force => true do |t|
    t.date     "date",                        :null => false
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payable_items", :force => true do |t|
    t.string   "name"
    t.integer  "seq"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payables", :force => true do |t|
    t.date     "date",                             :null => false
    t.integer  "payable_item_id",                  :null => false
    t.decimal  "dr",              :default => 0.0, :null => false
    t.decimal  "cr",              :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receivables", :force => true do |t|
    t.date     "date",                        :null => false
    t.integer  "company_id",                  :null => false
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", :force => true do |t|
    t.date     "date",                        :null => false
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "short_term_debts", :force => true do |t|
    t.date     "date",                        :null => false
    t.decimal  "dr",         :default => 0.0, :null => false
    t.decimal  "cr",         :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
