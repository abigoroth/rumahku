class ParkingqueuesController < ApplicationController
  before_action :set_parkingqueue, only: [:show, :edit, :update, :destroy]

  # GET /parkingqueues
  # GET /parkingqueues.json
  def index
    @parkingqueues = Parkingqueue.all
  end

  # GET /parkingqueues/1
  # GET /parkingqueues/1.json
  def show
  end

  # GET /parkingqueues/new
  def new
    @parkingqueue = Parkingqueue.new
  end

  # GET /parkingqueues/1/edit
  def edit
  end

  # POST /parkingqueues
  # POST /parkingqueues.json
  def create
    @parkingqueue = Parkingqueue.new(parkingqueue_params)

    respond_to do |format|
      if @parkingqueue.save
        format.html { redirect_to @parkingqueue, notice: 'Parkingqueue was successfully created.' }
        format.json { render :show, status: :created, location: @parkingqueue }
      else
        format.html { render :new }
        format.json { render json: @parkingqueue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkingqueues/1
  # PATCH/PUT /parkingqueues/1.json
  def update
    respond_to do |format|
      if @parkingqueue.update(parkingqueue_params)
        format.html { redirect_to @parkingqueue, notice: 'Parkingqueue was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkingqueue }
      else
        format.html { render :edit }
        format.json { render json: @parkingqueue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkingqueues/1
  # DELETE /parkingqueues/1.json
  def destroy
    @parkingqueue.destroy
    respond_to do |format|
      format.html { redirect_to parkingqueues_url, notice: 'Parkingqueue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkingqueue
      @parkingqueue = Parkingqueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkingqueue_params
      params.require(:parkingqueue).permit(:name, :apartment_number, :date)
    end
end
