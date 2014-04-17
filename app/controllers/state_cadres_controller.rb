class StateCadresController < ApplicationController
  # GET /state_cadres
  # GET /state_cadres.json
  def index
    @state_cadres = StateCadre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @state_cadres }
    end
  end

  # GET /state_cadres/1
  # GET /state_cadres/1.json
  def show
    @state_cadre = StateCadre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @state_cadre }
    end
  end

  # GET /state_cadres/new
  # GET /state_cadres/new.json
  def new
    @state_cadre = StateCadre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @state_cadre }
    end
  end

  # GET /state_cadres/1/edit
  def edit
    @state_cadre = StateCadre.find(params[:id])
  end

  # POST /state_cadres
  # POST /state_cadres.json
  def create
    @state_cadre = StateCadre.new(params[:state_cadre])

    respond_to do |format|
      if @state_cadre.save
        format.html { redirect_to @state_cadre, notice: 'State cadre was successfully created.' }
        format.json { render json: @state_cadre, status: :created, location: @state_cadre }
      else
        format.html { render action: "new" }
        format.json { render json: @state_cadre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /state_cadres/1
  # PUT /state_cadres/1.json
  def update
    @state_cadre = StateCadre.find(params[:id])

    respond_to do |format|
      if @state_cadre.update_attributes(params[:state_cadre])
        format.html { redirect_to @state_cadre, notice: 'State cadre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @state_cadre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_cadres/1
  # DELETE /state_cadres/1.json
  def destroy
    @state_cadre = StateCadre.find(params[:id])
    @state_cadre.destroy

    respond_to do |format|
      format.html { redirect_to state_cadres_url }
      format.json { head :no_content }
    end
  end
end
