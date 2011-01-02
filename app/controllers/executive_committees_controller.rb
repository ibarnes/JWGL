class ExecutiveCommitteesController < ApplicationController
  # GET /executive_committees
  # GET /executive_committees.xml
  def index
    @executive_committees = ExecutiveCommittee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @executive_committees }
    end
  end

  # GET /executive_committees/1
  # GET /executive_committees/1.xml
  def show
    @executive_committee = ExecutiveCommittee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @executive_committee }
    end
  end

  # GET /executive_committees/new
  # GET /executive_committees/new.xml
  def new
    @executive_committee = ExecutiveCommittee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @executive_committee }
    end
  end

  # GET /executive_committees/1/edit
  def edit
    @executive_committee = ExecutiveCommittee.find(params[:id])
  end

  # POST /executive_committees
  # POST /executive_committees.xml
  def create
    @executive_committee = ExecutiveCommittee.new(params[:executive_committee])

    respond_to do |format|
      if @executive_committee.save
        flash[:notice] = 'ExecutiveCommittee was successfully created.'
        format.html { redirect_to(@executive_committee) }
        format.xml  { render :xml => @executive_committee, :status => :created, :location => @executive_committee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @executive_committee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /executive_committees/1
  # PUT /executive_committees/1.xml
  def update
    @executive_committee = ExecutiveCommittee.find(params[:id])

    respond_to do |format|
      if @executive_committee.update_attributes(params[:executive_committee])
        flash[:notice] = 'ExecutiveCommittee was successfully updated.'
        format.html { redirect_to(@executive_committee) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @executive_committee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /executive_committees/1
  # DELETE /executive_committees/1.xml
  def destroy
    @executive_committee = ExecutiveCommittee.find(params[:id])
    @executive_committee.destroy

    respond_to do |format|
      format.html { redirect_to(executive_committees_url) }
      format.xml  { head :ok }
    end
  end
end
