class ScholarshipsController < ApplicationController
  respond_to :html, :xml, :json
  # GET /scholarships
  # GET /scholarships.xml
  def index
    # There's three ways to hit this page -- either all scholarships (no params), scholarships for a tag (tag_id),
    # or scholarships for a provider (scholarship_provider_id).  Probably a cleaner way to do this.
    @scholarships = params[:tag_id].nil? ? Scholarship.all : Tag.find(params[:tag_id]).scholarships
    if params[:scholarship_provider_id]
      @scholarships  = ScholarshipProvider.find(params[:scholarship_provider_id]).scholarships
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scholarships }
      format.json  { render :json => @scholarships }
    end
#    respond_with @scholarships
  end

  # GET /scholarships/1
  # GET /scholarships/1.xml
  def show
    @scholarship = Scholarship.find(params[:id])

    respond_with @scholarship
  end

  # GET /scholarships/new
  # GET /scholarships/new.xml
  def new
    @scholarship = Scholarship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scholarship }
    end
  end

  # GET /scholarships/1/edit
  def edit
    @scholarship = Scholarship.find(params[:id])
  end

  # POST /scholarships
  # POST /scholarships.xml
  def create
    @scholarship = Scholarship.new(params[:scholarship])

    respond_to do |format|
      if @scholarship.save
        format.html { redirect_to(@scholarship, :notice => 'Scholarship was successfully created.') }
        format.xml  { render :xml => @scholarship, :status => :created, :location => @scholarship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scholarship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scholarships/1
  # PUT /scholarships/1.xml
  def update
    @scholarship = Scholarship.find(params[:id])

    respond_to do |format|
      if @scholarship.update_attributes(params[:scholarship])
        format.html { redirect_to(@scholarship, :notice => 'Scholarship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scholarship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarships/1
  # DELETE /scholarships/1.xml
  def destroy
    @scholarship = Scholarship.find(params[:id])
    @scholarship.destroy

    respond_to do |format|
      format.html { redirect_to(scholarships_url) }
      format.xml  { head :ok }
    end
  end
end
