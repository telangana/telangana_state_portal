class PrivateSectorsController < ApplicationController
  # GET /private_sectors
  # GET /private_sectors.json
  def index
    @private_sectors = PrivateSector.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @private_sectors }
    end
  end

  # GET /private_sectors/1
  # GET /private_sectors/1.json
  def show
    @private_sector = PrivateSector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @private_sector }
    end
  end

  # GET /private_sectors/new
  # GET /private_sectors/new.json
  def new
    @private_sector = PrivateSector.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @private_sector }
    end
  end

  # GET /private_sectors/1/edit
  def edit
    @private_sector = PrivateSector.find(params[:id])
  end

  # POST /private_sectors
  # POST /private_sectors.json
  def create
    @private_sector = PrivateSector.new(params[:private_sector])

    respond_to do |format|
      if @private_sector.save
        format.html { redirect_to @private_sector, notice: 'Private sector was successfully created.' }
        format.json { render json: @private_sector, status: :created, location: @private_sector }
      else
        format.html { render action: "new" }
        format.json { render json: @private_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /private_sectors/1
  # PUT /private_sectors/1.json
  def update
    @private_sector = PrivateSector.find(params[:id])

    respond_to do |format|
      if @private_sector.update_attributes(params[:private_sector])
        format.html { redirect_to @private_sector, notice: 'Private sector was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @private_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_sectors/1
  # DELETE /private_sectors/1.json
  def destroy
    @private_sector = PrivateSector.find(params[:id])
    @private_sector.destroy

    respond_to do |format|
      format.html { redirect_to private_sectors_url }
      format.json { head :no_content }
    end
  end
end
