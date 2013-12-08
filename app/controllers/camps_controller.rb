class CampsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
    @regions = Region.all
    @cities = City.all
    @camps = Camp.all
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    @countries = Country.all
    @region = Region.all
    @cities = City.all
    @camps = Camp.find(params[:id])
    @camps = @city.camps.paginate(page: params[:page])
  end

  # GET /countries/new
  def new
    @cities = City.all
    @camps = Camp.all
    @camp = Camp.new    
    @regions = Region.all
    @countries = Country.all
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  # POST /countries.json
  def create
    @countries = Country.all
    @regions = Region.all
    @cities = City.all
    @camp = Camp.new(camp_params)

    respond_to do |format|
      if @camp.save
        format.html { redirect_to @camp, notice: 'Camp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @camp }
      else
        format.html { render action: 'new' }
        format.json { render json: @camp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    respond_to do |format|
      if @camp.update(camp_params)
        format.html { redirect_to @camp, notice: 'Camp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @camp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @camp.destroy
    respond_to do |format|
      format.html { redirect_to camps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp
      @camp = Camp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camp_params
      params.require(:camp).permit(:name, :description, :country_id, :region_id, :city_id)
    end
end
