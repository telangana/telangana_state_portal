class MandalsController < ApplicationController
  # GET /mandals
  # GET /mandals.json
  def index
    @mandals = Mandal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mandals }
    end
  end

  # GET /mandals/1
  # GET /mandals/1.json
  def show
    @mandal = Mandal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mandal }
    end
  end

  # GET /mandals/new
  # GET /mandals/new.json
  def new
    @mandal = Mandal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mandal }
    end
  end

  # GET /mandals/1/edit
  def edit
    @mandal = Mandal.find(params[:id])
  end

  # POST /mandals
  # POST /mandals.json
  def create
    @mandal = Mandal.new(params[:mandal])

    respond_to do |format|
      if @mandal.save
        format.html { redirect_to @mandal, notice: 'Mandal was successfully created.' }
        format.json { render json: @mandal, status: :created, location: @mandal }
      else
        format.html { render action: "new" }
        format.json { render json: @mandal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mandals/1
  # PUT /mandals/1.json
  def update
    @mandal = Mandal.find(params[:id])

    respond_to do |format|
      if @mandal.update_attributes(params[:mandal])
        format.html { redirect_to @mandal, notice: 'Mandal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mandal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mandals/1
  # DELETE /mandals/1.json
  def destroy
    @mandal = Mandal.find(params[:id])
    @mandal.destroy

    respond_to do |format|
      format.html { redirect_to mandals_url }
      format.json { head :no_content }
    end
  end
end
