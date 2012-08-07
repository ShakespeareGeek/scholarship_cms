class ScholarshipProvidersController < ApplicationController
  respond_to :html, :json, :xml
  # GET /scholarship_providers
  # GET /scholarship_providers.xml
  def index
    @scholarship_providers = ScholarshipProvider.all
    respond_with @scholarship_providers
  end

  # GET /scholarship_providers/1
  # GET /scholarship_providers/1.xml
  def show
    @scholarship_provider = ScholarshipProvider.find(params[:id])
    respond_with @scholarship_provider, :include=>:scholarships
  end

  # GET /scholarship_providers/new
  # GET /scholarship_providers/new.xml
  def new
    @scholarship_provider = ScholarshipProvider.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scholarship_provider }
    end
  end

  # GET /scholarship_providers/1/edit
  def edit
    @scholarship_provider = ScholarshipProvider.find(params[:id])
  end

  # POST /scholarship_providers
  # POST /scholarship_providers.xml
  def create
    @scholarship_provider = ScholarshipProvider.new(params[:scholarship_provider])

    respond_to do |format|
      if @scholarship_provider.save
        format.html { redirect_to(@scholarship_provider, :notice => 'Scholarship provider was successfully created.') }
        format.xml  { render :xml => @scholarship_provider, :status => :created, :location => @scholarship_provider }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scholarship_provider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scholarship_providers/1
  # PUT /scholarship_providers/1.xml
  def update
    @scholarship_provider = ScholarshipProvider.find(params[:id])

    respond_to do |format|
      if @scholarship_provider.update_attributes(params[:scholarship_provider])
        format.json { respond_with_bip(@scholarship_provider) }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scholarship_provider.errors, :status => :unprocessable_entity }
        format.json { respond_with_bip(@scholarship_provider) }
      end
    end
  end

  # DELETE /scholarship_providers/1
  # DELETE /scholarship_providers/1.xml
  def destroy
    @scholarship_provider = ScholarshipProvider.find(params[:id])
    @scholarship_provider.destroy

    respond_to do |format|
      format.html { redirect_to(scholarship_providers_url) }
      format.xml  { head :ok }
    end
  end
end
