class MlasController < ApplicationController
  # GET /mlas
  # GET /mlas.json
  def index
    @mlas = Mla.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mlas }
    end
  end

  # GET /mlas/1
  # GET /mlas/1.json
  def show
    @mla = Mla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mla }
    end
  end

  # GET /mlas/new
  # GET /mlas/new.json
  def new
    @mla = Mla.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mla }
    end
  end

  # GET /mlas/1/edit
  def edit
    @mla = Mla.find(params[:id])
  end

  # POST /mlas
  # POST /mlas.json
  def create
    @mla = Mla.new(params[:mla])

    respond_to do |format|
      if @mla.save
        format.html { redirect_to @mla, notice: 'Mla was successfully created.' }
        format.json { render json: @mla, status: :created, location: @mla }
      else
        format.html { render action: "new" }
        format.json { render json: @mla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mlas/1
  # PUT /mlas/1.json
  def update
    @mla = Mla.find(params[:id])

    respond_to do |format|
      if @mla.update_attributes(params[:mla])
        format.html { redirect_to @mla, notice: 'Mla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mlas/1
  # DELETE /mlas/1.json
  def destroy
    @mla = Mla.find(params[:id])
    @mla.destroy

    respond_to do |format|
      format.html { redirect_to mlas_url }
      format.json { head :no_content }
    end
  end
end
