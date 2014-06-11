class MinistersController < ApplicationController
  layout "layouts/latest" 
  # GET /ministers
  # GET /ministers.json
  def index
    @ministers = Minister.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ministers }
    end
  end

  # GET /ministers/1
  # GET /ministers/1.json
  def show
    @minister = Minister.find(params[:id])
    @min_deps = Minister.find(params[:id]).departments
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @minister }
    end
  end

  # GET /ministers/new
  # GET /ministers/new.json
  def new
    @minister = Minister.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @minister }
    end
  end

  # GET /ministers/1/edit
  def edit
    @minister = Minister.find(params[:id])
  end

  # POST /ministers
  # POST /ministers.json
  def create
    @minister = Minister.new(params[:minister])

    respond_to do |format|
      if @minister.save
        format.html { redirect_to @minister, notice: 'Minister was successfully created.' }
        format.json { render json: @minister, status: :created, location: @minister }
      else
        format.html { render action: "new" }
        format.json { render json: @minister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ministers/1
  # PUT /ministers/1.json
  def update
    @minister = Minister.find(params[:id])

    respond_to do |format|
      if @minister.update_attributes(params[:minister])
        format.html { redirect_to @minister, notice: 'Minister was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @minister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministers/1
  # DELETE /ministers/1.json
  def destroy
    @minister = Minister.find(params[:id])
    @minister.destroy

    respond_to do |format|
      format.html { redirect_to ministers_url }
      format.json { head :no_content }
    end
  end
end
