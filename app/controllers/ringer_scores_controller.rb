class RingerScoresController < ApplicationController
  # GET /ringer_scores
  # GET /ringer_scores.xml
  def index
    @ringer_scores = RingerScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ringer_scores }
    end
  end

  # GET /ringer_scores/1
  # GET /ringer_scores/1.xml
  def show
    @ringer_score = RingerScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ringer_score }
    end
  end

  # GET /ringer_scores/new
  # GET /ringer_scores/new.xml
  def new
    @ringer_score = RingerScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ringer_score }
    end
  end

  # GET /ringer_scores/1/edit
  def edit
    @ringer_score = RingerScore.find(params[:id])
  end

  # POST /ringer_scores
  # POST /ringer_scores.xml
  def create
    @ringer_score = RingerScore.new(params[:ringer_score])

    respond_to do |format|
      if @ringer_score.save
        flash[:notice] = 'RingerScore was successfully created.'
        format.html { redirect_to(@ringer_score) }
        format.xml  { render :xml => @ringer_score, :status => :created, :location => @ringer_score }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ringer_score.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ringer_scores/1
  # PUT /ringer_scores/1.xml
  def update
    @ringer_score = RingerScore.find(params[:id])

    respond_to do |format|
      if @ringer_score.update_attributes(params[:ringer_score])
        flash[:notice] = 'RingerScore was successfully updated.'
        format.html { redirect_to(@ringer_score) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ringer_score.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ringer_scores/1
  # DELETE /ringer_scores/1.xml
  def destroy
    @ringer_score = RingerScore.find(params[:id])
    @ringer_score.destroy

    respond_to do |format|
      format.html { redirect_to(ringer_scores_url) }
      format.xml  { head :ok }
    end
  end
end
