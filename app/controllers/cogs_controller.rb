class CogsController < ApplicationController
  # GET /cogs
  # GET /cogs.xml
  def index
    @cogs = Cog.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cogs }
    end
  end

  # GET /cogs/1
  # GET /cogs/1.xml
  def show
    @cog = Cog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cog }
    end
  end

  # GET /cogs/new
  # GET /cogs/new.xml
  def new
    @cog = Cog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cog }
    end
  end

  # GET /cogs/1/edit
  def edit
    @cog = Cog.find(params[:id])
  end

  # POST /cogs
  # POST /cogs.xml
  def create
    @cog = Cog.new(params[:cog])

    respond_to do |format|
      if @cog.save
        format.html { redirect_to(@cog, :notice => 'Cog was successfully created.') }
        format.xml  { render :xml => @cog, :status => :created, :location => @cog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cogs/1
  # PUT /cogs/1.xml
  def update
    @cog = Cog.find(params[:id])

    respond_to do |format|
      if @cog.update_attributes(params[:cog])
        format.html { redirect_to(@cog, :notice => 'Cog was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cogs/1
  # DELETE /cogs/1.xml
  def destroy
    @cog = Cog.find(params[:id])
    @cog.destroy

    respond_to do |format|
      format.html { redirect_to(cogs_url) }
      format.xml  { head :ok }
    end
  end
end
