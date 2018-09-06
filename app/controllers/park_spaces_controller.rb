class ParkSpacesController < ApplicationController
  before_action :set_park_space, only: [:show, :edit, :update, :destroy]

  # GET /park_spaces
  # GET /park_spaces.json
  def index
    @park_spaces = ParkSpace.all
  end

  # GET /park_spaces/1
  # GET /park_spaces/1.json
  def show
  end

  # GET /park_spaces/new
  def new
    @park_space = ParkSpace.new
  end

  # GET /park_spaces/1/edit
  def edit
  end

  # POST /park_spaces
  # POST /park_spaces.json
  def create
    @park_space = ParkSpace.new(park_space_params)

    respond_to do |format|
      if @park_space.save
        format.html { redirect_to @park_space, notice: 'Park space was successfully created.' }
        format.json { render :show, status: :created, location: @park_space }
      else
        format.html { render :new }
        format.json { render json: @park_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /park_spaces/1
  # PATCH/PUT /park_spaces/1.json
  def update
    respond_to do |format|
      if @park_space.update(park_space_params)
        format.html { redirect_to @park_space, notice: 'Park space was successfully updated.' }
        format.json { render :show, status: :ok, location: @park_space }
      else
        format.html { render :edit }
        format.json { render json: @park_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /park_spaces/1
  # DELETE /park_spaces/1.json
  def destroy
    @park_space.destroy
    respond_to do |format|
      format.html { redirect_to park_spaces_url, notice: 'Park space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park_space
      @park_space = ParkSpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def park_space_params
      params.require(:park_space).permit(:parknum, :spacetype, :available)
    end
end
