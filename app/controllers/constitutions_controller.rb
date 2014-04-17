class ConstitutionsController < ApplicationController
  # GET /constitutions
  # GET /constitutions.json
  def index
    @constitutions = Constitution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @constitutions }
    end
  end

  # GET /constitutions/1
  # GET /constitutions/1.json
  def show
    @constitution = Constitution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @constitution }
    end
  end

  # GET /constitutions/new
  # GET /constitutions/new.json
  def new
    @constitution = Constitution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @constitution }
    end
  end

  # GET /constitutions/1/edit
  def edit
    @constitution = Constitution.find(params[:id])
  end

  # POST /constitutions
  # POST /constitutions.json
  def create
    @constitution = Constitution.new(params[:constitution])

    respond_to do |format|
      if @constitution.save
        format.html { redirect_to @constitution, notice: 'Constitution was successfully created.' }
        format.json { render json: @constitution, status: :created, location: @constitution }
      else
        format.html { render action: "new" }
        format.json { render json: @constitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /constitutions/1
  # PUT /constitutions/1.json
  def update
    @constitution = Constitution.find(params[:id])

    respond_to do |format|
      if @constitution.update_attributes(params[:constitution])
        format.html { redirect_to @constitution, notice: 'Constitution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @constitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constitutions/1
  # DELETE /constitutions/1.json
  def destroy
    @constitution = Constitution.find(params[:id])
    @constitution.destroy

    respond_to do |format|
      format.html { redirect_to constitutions_url }
      format.json { head :no_content }
    end
  end
end
