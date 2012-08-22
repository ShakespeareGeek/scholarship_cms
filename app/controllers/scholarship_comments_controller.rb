class ScholarshipCommentsController < ApplicationController
  # GET /scholarship_comments
  # GET /scholarship_comments.json
  def index
    @scholarship_comments = ScholarshipComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scholarship_comments }
    end
  end

  # GET /scholarship_comments/1
  # GET /scholarship_comments/1.json
  def show
    @scholarship_comment = ScholarshipComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scholarship_comment }
    end
  end

  # GET /scholarship_comments/new
  # GET /scholarship_comments/new.json
  def new
    @scholarship_comment = ScholarshipComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scholarship_comment }
    end
  end

  # GET /scholarship_comments/1/edit
  def edit
    @scholarship_comment = ScholarshipComment.find(params[:id])
  end

  # POST /scholarship_comments
  # POST /scholarship_comments.json
  def create
    @scholarship_comment = ScholarshipComment.new(params[:scholarship_comment])

    respond_to do |format|
      if @scholarship_comment.save
        format.html { redirect_to @scholarship_comment, notice: 'Scholarship comment was successfully created.' }
        format.json { render json: @scholarship_comment, status: :created, location: @scholarship_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @scholarship_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scholarship_comments/1
  # PUT /scholarship_comments/1.json
  def update
    @scholarship_comment = ScholarshipComment.find(params[:id])

    respond_to do |format|
      if @scholarship_comment.update_attributes(params[:scholarship_comment])
        format.html { redirect_to @scholarship_comment, notice: 'Scholarship comment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @scholarship_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarship_comments/1
  # DELETE /scholarship_comments/1.json
  def destroy
    @scholarship_comment = ScholarshipComment.find(params[:id])
    @scholarship_comment.destroy

    respond_to do |format|
      format.html { redirect_to scholarship_comments_url }
      format.json { head :ok }
    end
  end
end
