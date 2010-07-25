class TrialBalanceController < ApplicationController
  def show
    date = Date.parse('2010-01-01')
    @trial_balance = TrialBalance.new(date)
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @short_term_debts }
    end
  end  
end
