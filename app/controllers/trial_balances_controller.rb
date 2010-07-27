class TrialBalancesController < ApplicationController
  def show
    if params[:audit_month]!=nil
      session[:audit_month] = str_civil params[:audit_month][:year], params[:audit_month][:month], params[:audit_month][:day]
    end
    if session[:audit_month] == nil
      session[:audit_month] = Date.civil(Date.today.year,Date.today.month) # find a better way
    end
    @audit_month = session[:audit_month]
    
    @trial_balance = TrialBalance.new(@audit_month)
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @short_term_debts }
    end
  end  
  
  private
  def str_civil(year, month, day)
    Date.civil year.to_i, month.to_i, day.to_i
  end

end
