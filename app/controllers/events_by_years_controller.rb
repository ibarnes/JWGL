class EventsByYearsController < ApplicationController
  # GET /events_by_years
  # GET /events_by_years.xml
  def index
    @events_by_years = EventsByYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events_by_years }
    end
  end

  # GET /events_by_years/1
  # GET /events_by_years/1.xml
  def show
    @events_by_year = EventsByYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @events_by_year }
    end
  end

  # GET /events_by_years/new
  # GET /events_by_years/new.xml
  def new
    @events_by_year = EventsByYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @events_by_year }
    end
  end

  # GET /events_by_years/1/edit
  def edit
    @events_by_year = EventsByYear.find(params[:id])
  end

  # POST /events_by_years
  # POST /events_by_years.xml
  def create
    @events_by_year = EventsByYear.new(params[:events_by_year])

    respond_to do |format|
      if @events_by_year.save
        flash[:notice] = 'EventsByYear was successfully created.'
        format.html { redirect_to(@events_by_year) }
        format.xml  { render :xml => @events_by_year, :status => :created, :location => @events_by_year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @events_by_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events_by_years/1
  # PUT /events_by_years/1.xml
  def update
    @events_by_year = EventsByYear.find(params[:id])

    respond_to do |format|
      if @events_by_year.update_attributes(params[:events_by_year])
        flash[:notice] = 'EventsByYear was successfully updated.'
        format.html { redirect_to(@events_by_year) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @events_by_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events_by_years/1
  # DELETE /events_by_years/1.xml
  def destroy
    @events_by_year = EventsByYear.find(params[:id])
    @events_by_year.destroy

    respond_to do |format|
      format.html { redirect_to(events_by_years_url) }
      format.xml  { head :ok }
    end
  end
end
