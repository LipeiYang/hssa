class PaidInCapitalsController < ApplicationController
  # GET /paid_in_capitals
  # GET /paid_in_capitals.xml
  def index
    @paid_in_capitals = PaidInCapital.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paid_in_capitals }
    end
  end

  # GET /paid_in_capitals/1
  # GET /paid_in_capitals/1.xml
  def show
    @paid_in_capital = PaidInCapital.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paid_in_capital }
    end
  end

  # GET /paid_in_capitals/new
  # GET /paid_in_capitals/new.xml
  def new
    @paid_in_capital = PaidInCapital.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paid_in_capital }
    end
  end

  # GET /paid_in_capitals/1/edit
  def edit
    @paid_in_capital = PaidInCapital.find(params[:id])
  end

  # POST /paid_in_capitals
  # POST /paid_in_capitals.xml
  def create
    @paid_in_capital = PaidInCapital.new(params[:paid_in_capital])

    respond_to do |format|
      if @paid_in_capital.save
        format.html { redirect_to(@paid_in_capital, :notice => 'PaidInCapital was successfully created.') }
        format.xml  { render :xml => @paid_in_capital, :status => :created, :location => @paid_in_capital }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paid_in_capital.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paid_in_capitals/1
  # PUT /paid_in_capitals/1.xml
  def update
    @paid_in_capital = PaidInCapital.find(params[:id])

    respond_to do |format|
      if @paid_in_capital.update_attributes(params[:paid_in_capital])
        format.html { redirect_to(@paid_in_capital, :notice => 'PaidInCapital was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paid_in_capital.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paid_in_capitals/1
  # DELETE /paid_in_capitals/1.xml
  def destroy
    @paid_in_capital = PaidInCapital.find(params[:id])
    @paid_in_capital.destroy

    respond_to do |format|
      format.html { redirect_to(paid_in_capitals_url) }
      format.xml  { head :ok }
    end
  end
end
