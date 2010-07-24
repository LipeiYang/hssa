class MaterailsController < ApplicationController
  # GET /materails
  # GET /materails.xml
  def index
    @materails = Materail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @materails }
    end
  end

  # GET /materails/1
  # GET /materails/1.xml
  def show
    @materail = Materail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @materail }
    end
  end

  # GET /materails/new
  # GET /materails/new.xml
  def new
    @materail = Materail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @materail }
    end
  end

  # GET /materails/1/edit
  def edit
    @materail = Materail.find(params[:id])
  end

  # POST /materails
  # POST /materails.xml
  def create
    @materail = Materail.new(params[:materail])

    respond_to do |format|
      if @materail.save
        format.html { redirect_to(@materail, :notice => 'Materail was successfully created.') }
        format.xml  { render :xml => @materail, :status => :created, :location => @materail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @materail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /materails/1
  # PUT /materails/1.xml
  def update
    @materail = Materail.find(params[:id])

    respond_to do |format|
      if @materail.update_attributes(params[:materail])
        format.html { redirect_to(@materail, :notice => 'Materail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @materail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /materails/1
  # DELETE /materails/1.xml
  def destroy
    @materail = Materail.find(params[:id])
    @materail.destroy

    respond_to do |format|
      format.html { redirect_to(materails_url) }
      format.xml  { head :ok }
    end
  end
end
