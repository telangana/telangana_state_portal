class OfficialProfilesController < ApplicationController
  # GET /official_profiles
  # GET /official_profiles.json
  def index
    @official_profiles = OfficialProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @official_profiles }
    end
  end

  # GET /official_profiles/1
  # GET /official_profiles/1.json
  def show
    @official_profile = OfficialProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @official_profile }
    end
  end

  # GET /official_profiles/new
  # GET /official_profiles/new.json
  def new
    @official_profile = OfficialProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @official_profile }
    end
  end

  # GET /official_profiles/1/edit
  def edit
    @official_profile = OfficialProfile.find(params[:id])
  end

  # POST /official_profiles
  # POST /official_profiles.json
  def create
    @official_profile = OfficialProfile.new(params[:official_profile])

    respond_to do |format|
      if @official_profile.save
        format.html { redirect_to @official_profile, notice: 'Official profile was successfully created.' }
        format.json { render json: @official_profile, status: :created, location: @official_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @official_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /official_profiles/1
  # PUT /official_profiles/1.json
  def update
    @official_profile = OfficialProfile.find(params[:id])

    respond_to do |format|
      if @official_profile.update_attributes(params[:official_profile])
        format.html { redirect_to @official_profile, notice: 'Official profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @official_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /official_profiles/1
  # DELETE /official_profiles/1.json
  def destroy
    @official_profile = OfficialProfile.find(params[:id])
    @official_profile.destroy

    respond_to do |format|
      format.html { redirect_to official_profiles_url }
      format.json { head :no_content }
    end
  end
end
