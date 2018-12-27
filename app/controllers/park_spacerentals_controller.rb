class ParkSpacerentalsController < ApplicationController
  before_action -> { authenticate(['admin','user']) }
  before_action :set_park_spacerental, only: [:show, :edit, :update, :destroy]

  # GET /park_spacerentals
  # GET /park_spacerentals.json
  def index
    @park_spacerentals = ParkSpacerental.all
  end

  # GET /park_spacerentals/1
  # GET /park_spacerentals/1.json
  def show
  end

  # GET /park_spacerentals/new
  def new
    if params[:park_spacerental]
      @park_spacerental = ParkSpacerental.new(park_spacerental_params)
    else
      @park_spacerental = ParkSpacerental.new
    end
  end

  # GET /park_spacerentals/1/edit
  def edit
  end

  



  # POST /park_spacerentals
  # POST /park_spacerentals.json
  def create
    @park_spacerental = ParkSpacerental.new(park_spacerental_params)

    respond_to do |format|
      if @park_spacerental.save
        format.html { redirect_to @park_spacerental, notice: 'Park spacerental was successfully created.' }
        format.json { render :show, status: :created, location: @park_spacerental }
      else
        format.html { render :new }
        format.json { render json: @park_spacerental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /park_spacerentals/1
  # PATCH/PUT /park_spacerentals/1.json
  def update
    respond_to do |format|
      if @park_spacerental.update(park_spacerental_params)
        format.html { redirect_to @park_spacerental, notice: 'Park spacerental was successfully updated.' }
        format.json { render :show, status: :ok, location: @park_spacerental }
      else
        format.html { render :edit }
        format.json { render json: @park_spacerental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /park_spacerentals/1
  # DELETE /park_spacerentals/1.json
  def destroy
    @park_spacerental.destroy
    respond_to do |format|
      format.html { redirect_to park_spacerentals_url, notice: 'Park spacerental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def filter_expired
    @park_spacerentals = ParkSpacerental.where('start_rent < ?', Date.today)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park_spacerental
      @park_spacerental = ParkSpacerental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def park_spacerental_params
      params.require(:park_spacerental).permit(:park_space_id, :car_id, :start_rent, :end_rent, :price, :apartment_id, :picture, :requested_start_rent, :requested_end_rent, :apartment_id)
    end
end
