class BalanceSheetsController < ApplicationController

  # GET /balance_sheets/1
  # GET /balance_sheets/1.xml
  def show
    @audit_month = session[:audit_month]
    
    @bal_sht = BalanceSheet.new(@audit_month)

    respond_to do |format|
      format.html # show.html.erb
      format.xls
    end
  end

end
