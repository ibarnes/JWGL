class YearsController < ApplicationController
  # GET /years
  # GET /years.xml
  def index
    @years = Year.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @years }
    end
  end

  # GET /years/1
  # GET /years/1.xml
  def show
    @year = Year.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year }
    end
  end

  # GET /years/new
  # GET /years/new.xml
  def new
    @year = Year.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @year }
    end
  end

  # GET /years/1/edit
  def edit
    @year = Year.find(params[:id])
  end

  # POST /years
  # POST /years.xml
  def create
    @year = Year.new(params[:year])

    respond_to do |format|
      if @year.save
        flash[:notice] = 'Year was successfully created.'
        format.html { redirect_to(@year) }
        format.xml  { render :xml => @year, :status => :created, :location => @year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /years/1
  # PUT /years/1.xml
  def update
    @year = Year.find(params[:id])

    respond_to do |format|
      if @year.update_attributes(params[:year])
        flash[:notice] = 'Year was successfully updated.'
        format.html { redirect_to(@year) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.xml
  def destroy
    @year = Year.find(params[:id])
    @year.destroy

    respond_to do |format|
      format.html { redirect_to(years_url) }
      format.xml  { head :ok }
    end
  end
end
