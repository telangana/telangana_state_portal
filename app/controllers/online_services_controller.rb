class OnlineServicesController < ApplicationController
  # GET /online_services
  # GET /online_services.json
  def index
    @online_services = OnlineService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @online_services }
    end
  end

  # GET /online_services/1
  # GET /online_services/1.json
  def show
    @online_service = OnlineService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @online_service }
    end
  end

  # GET /online_services/new
  # GET /online_services/new.json
  def new
    @online_service = OnlineService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @online_service }
    end
  end

  # GET /online_services/1/edit
  def edit
    @online_service = OnlineService.find(params[:id])
  end

  # POST /online_services
  # POST /online_services.json
  def create
    @online_service = OnlineService.new(params[:online_service])

    respond_to do |format|
      if @online_service.save
        format.html { redirect_to @online_service, notice: 'Online service was successfully created.' }
        format.json { render json: @online_service, status: :created, location: @online_service }
      else
        format.html { render action: "new" }
        format.json { render json: @online_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /online_services/1
  # PUT /online_services/1.json
  def update
    @online_service = OnlineService.find(params[:id])

    respond_to do |format|
      if @online_service.update_attributes(params[:online_service])
        format.html { redirect_to @online_service, notice: 'Online service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @online_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_services/1
  # DELETE /online_services/1.json
  def destroy
    @online_service = OnlineService.find(params[:id])
    @online_service.destroy

    respond_to do |format|
      format.html { redirect_to online_services_url }
      format.json { head :no_content }
    end
  end
end
