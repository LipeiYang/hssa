class ShortTermDebtsController < ApplicationController
  # GET /short_term_debts
  # GET /short_term_debts.xml
  def index
    @short_term_debts = ShortTermDebt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @short_term_debts }
    end
  end

  # GET /short_term_debts/1
  # GET /short_term_debts/1.xml
  def show
    @short_term_debt = ShortTermDebt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @short_term_debt }
    end
  end

  # GET /short_term_debts/new
  # GET /short_term_debts/new.xml
  def new
    @short_term_debt = ShortTermDebt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @short_term_debt }
    end
  end

  # GET /short_term_debts/1/edit
  def edit
    @short_term_debt = ShortTermDebt.find(params[:id])
  end

  # POST /short_term_debts
  # POST /short_term_debts.xml
  def create
    @short_term_debt = ShortTermDebt.new(params[:short_term_debt])

    respond_to do |format|
      if @short_term_debt.save
        format.html { redirect_to(@short_term_debt, :notice => 'ShortTermDebt was successfully created.') }
        format.xml  { render :xml => @short_term_debt, :status => :created, :location => @short_term_debt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @short_term_debt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /short_term_debts/1
  # PUT /short_term_debts/1.xml
  def update
    @short_term_debt = ShortTermDebt.find(params[:id])

    respond_to do |format|
      if @short_term_debt.update_attributes(params[:short_term_debt])
        format.html { redirect_to(@short_term_debt, :notice => 'ShortTermDebt was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @short_term_debt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /short_term_debts/1
  # DELETE /short_term_debts/1.xml
  def destroy
    @short_term_debt = ShortTermDebt.find(params[:id])
    @short_term_debt.destroy

    respond_to do |format|
      format.html { redirect_to(short_term_debts_url) }
      format.xml  { head :ok }
    end
  end
end
