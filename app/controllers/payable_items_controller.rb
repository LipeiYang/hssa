class PayableItemsController < ApplicationController
  # GET /payable_items
  # GET /payable_items.xml
  def index
    @payable_items = PayableItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @payable_items }
    end
  end

  # GET /payable_items/1
  # GET /payable_items/1.xml
  def show
    @payable_item = PayableItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @payable_item }
    end
  end

  # GET /payable_items/new
  # GET /payable_items/new.xml
  def new
    @payable_item = PayableItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @payable_item }
    end
  end

  # GET /payable_items/1/edit
  def edit
    @payable_item = PayableItem.find(params[:id])
  end

  # POST /payable_items
  # POST /payable_items.xml
  def create
    @payable_item = PayableItem.new(params[:payable_item])

    respond_to do |format|
      if @payable_item.save
        format.html { redirect_to(@payable_item, :notice => 'PayableItem was successfully created.') }
        format.xml  { render :xml => @payable_item, :status => :created, :location => @payable_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @payable_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /payable_items/1
  # PUT /payable_items/1.xml
  def update
    @payable_item = PayableItem.find(params[:id])

    respond_to do |format|
      if @payable_item.update_attributes(params[:payable_item])
        format.html { redirect_to(@payable_item, :notice => 'PayableItem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @payable_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /payable_items/1
  # DELETE /payable_items/1.xml
  def destroy
    @payable_item = PayableItem.find(params[:id])
    @payable_item.destroy

    respond_to do |format|
      format.html { redirect_to(payable_items_url) }
      format.xml  { head :ok }
    end
  end
end
