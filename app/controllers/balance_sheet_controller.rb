class BalanceSheetController < ApplicationController

  # GET /balance_sheets/1
  # GET /balance_sheets/1.xml
  def show
    @audit_month = session[:audit_month]
    
    @bal_sht = BalanceSheet.new(Date.new(2010,3,1))

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @balance_sheet }
    end
  end

end
