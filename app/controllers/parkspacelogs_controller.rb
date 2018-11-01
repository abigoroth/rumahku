class ParkspacelogsController < ApplicationController
  before_action :set_parkspacelog, only: [:show, :edit, :update, :destroy]

  # GET /parkspacelogs
  # GET /parkspacelogs.json
  def index
    @parkspacelogs = Parkspacelog.all
  end

  # GET /parkspacelogs/1
  # GET /parkspacelogs/1.json
  def show
  end

  # GET /parkspacelogs/new
  def new
    @parkspacelog = Parkspacelog.new
  end

  # GET /parkspacelogs/1/edit
  def edit
  end

  # POST /parkspacelogs
  # POST /parkspacelogs.json
  def create
    @parkspacelog = Parkspacelog.new(parkspacelog_params)

    respond_to do |format|
      if @parkspacelog.save
        format.html { redirect_to @parkspacelog, notice: 'Parkspacelog was successfully created.' }
        format.json { render :show, status: :created, location: @parkspacelog }
      else
        format.html { render :new }
        format.json { render json: @parkspacelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkspacelogs/1
  # PATCH/PUT /parkspacelogs/1.json
  def update
    respond_to do |format|
      if @parkspacelog.update(parkspacelog_params)
        format.html { redirect_to @parkspacelog, notice: 'Parkspacelog was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkspacelog }
      else
        format.html { render :edit }
        format.json { render json: @parkspacelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkspacelogs/1
  # DELETE /parkspacelogs/1.json
  def destroy
    @parkspacelog.destroy
    respond_to do |format|
      format.html { redirect_to parkspacelogs_url, notice: 'Parkspacelog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkspacelog
      @parkspacelog = Parkspacelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkspacelog_params
      params.require(:parkspacelog).permit(:parking_no, :date, :message, :park_space_id)
    end
end
