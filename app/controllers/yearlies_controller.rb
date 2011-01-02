class YearliesController < ApplicationController
  # GET /yearlies
  # GET /yearlies.xml
  def index
    @yearlies = Yearly.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @yearlies }
    end
  end

  # GET /yearlies/1
  # GET /yearlies/1.xml
  def show
    @yearly = Yearly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @yearly }
    end
  end

  # GET /yearlies/new
  # GET /yearlies/new.xml
  def new
    @yearly = Yearly.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @yearly }
    end
  end

  # GET /yearlies/1/edit
  def edit
    @yearly = Yearly.find(params[:id])
  end

  # POST /yearlies
  # POST /yearlies.xml
  def create
    @yearly = Yearly.new(params[:yearly])

    respond_to do |format|
      if @yearly.save
        flash[:notice] = 'Yearly was successfully created.'
        format.html { redirect_to(@yearly) }
        format.xml  { render :xml => @yearly, :status => :created, :location => @yearly }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @yearly.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /yearlies/1
  # PUT /yearlies/1.xml
  def update
    @yearly = Yearly.find(params[:id])

    respond_to do |format|
      if @yearly.update_attributes(params[:yearly])
        flash[:notice] = 'Yearly was successfully updated.'
        format.html { redirect_to(@yearly) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @yearly.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /yearlies/1
  # DELETE /yearlies/1.xml
  def destroy
    @yearly = Yearly.find(params[:id])
    @yearly.destroy

    respond_to do |format|
      format.html { redirect_to(yearlies_url) }
      format.xml  { head :ok }
    end
  end
end
