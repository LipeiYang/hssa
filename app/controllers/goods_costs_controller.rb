class GoodsCostsController < ApplicationController
  # GET /goods_costs
  # GET /goods_costs.xml
  def index
    @goods_costs = GoodsCost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @goods_costs }
    end
  end

  # GET /goods_costs/1
  # GET /goods_costs/1.xml
  def show
    @goods_cost = GoodsCost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @goods_cost }
    end
  end

  # GET /goods_costs/new
  # GET /goods_costs/new.xml
  def new
    @goods_cost = GoodsCost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @goods_cost }
    end
  end

  # GET /goods_costs/1/edit
  def edit
    @goods_cost = GoodsCost.find(params[:id])
  end

  # POST /goods_costs
  # POST /goods_costs.xml
  def create
    @goods_cost = GoodsCost.new(params[:goods_cost])

    respond_to do |format|
      if @goods_cost.save
        format.html { redirect_to(@goods_cost, :notice => 'GoodsCost was successfully created.') }
        format.xml  { render :xml => @goods_cost, :status => :created, :location => @goods_cost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @goods_cost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /goods_costs/1
  # PUT /goods_costs/1.xml
  def update
    @goods_cost = GoodsCost.find(params[:id])

    respond_to do |format|
      if @goods_cost.update_attributes(params[:goods_cost])
        format.html { redirect_to(@goods_cost, :notice => 'GoodsCost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @goods_cost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /goods_costs/1
  # DELETE /goods_costs/1.xml
  def destroy
    @goods_cost = GoodsCost.find(params[:id])
    @goods_cost.destroy

    respond_to do |format|
      format.html { redirect_to(goods_costs_url) }
      format.xml  { head :ok }
    end
  end
end
