class ExecutivePositionsController < ApplicationController
  # GET /executive_positions
  # GET /executive_positions.xml
  def index
    @executive_positions = ExecutivePosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @executive_positions }
    end
  end

  # GET /executive_positions/1
  # GET /executive_positions/1.xml
  def show
    @executive_position = ExecutivePosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @executive_position }
    end
  end

  # GET /executive_positions/new
  # GET /executive_positions/new.xml
  def new
    @executive_position = ExecutivePosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @executive_position }
    end
  end

  # GET /executive_positions/1/edit
  def edit
    @executive_position = ExecutivePosition.find(params[:id])
  end

  # POST /executive_positions
  # POST /executive_positions.xml
  def create
    @executive_position = ExecutivePosition.new(params[:executive_position])

    respond_to do |format|
      if @executive_position.save
        flash[:notice] = 'ExecutivePosition was successfully created.'
        format.html { redirect_to(@executive_position) }
        format.xml  { render :xml => @executive_position, :status => :created, :location => @executive_position }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @executive_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /executive_positions/1
  # PUT /executive_positions/1.xml
  def update
    @executive_position = ExecutivePosition.find(params[:id])

    respond_to do |format|
      if @executive_position.update_attributes(params[:executive_position])
        flash[:notice] = 'ExecutivePosition was successfully updated.'
        format.html { redirect_to(@executive_position) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @executive_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /executive_positions/1
  # DELETE /executive_positions/1.xml
  def destroy
    @executive_position = ExecutivePosition.find(params[:id])
    @executive_position.destroy

    respond_to do |format|
      format.html { redirect_to(executive_positions_url) }
      format.xml  { head :ok }
    end
  end
end
