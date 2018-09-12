class Jeng2sController < ApplicationController
  before_action :set_jeng2, only: [:show, :edit, :update, :destroy]

  # GET /jeng2s
  # GET /jeng2s.json
  def index
    @jeng2s = Jeng2.all
  end

  # GET /jeng2s/1
  # GET /jeng2s/1.json
  def show
  end

  # GET /jeng2s/new
  def new
    @jeng2 = Jeng2.new
  end

  # GET /jeng2s/1/edit
  def edit
  end

  # POST /jeng2s
  # POST /jeng2s.json
  def create
    @jeng2 = Jeng2.new(jeng2_params)

    respond_to do |format|
      if @jeng2.save
        format.html { redirect_to @jeng2, notice: 'Jeng2 was successfully created.' }
        format.json { render :show, status: :created, location: @jeng2 }
      else
        format.html { render :new }
        format.json { render json: @jeng2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jeng2s/1
  # PATCH/PUT /jeng2s/1.json
  def update
    respond_to do |format|
      if @jeng2.update(jeng2_params)
        format.html { redirect_to @jeng2, notice: 'Jeng2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @jeng2 }
      else
        format.html { render :edit }
        format.json { render json: @jeng2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jeng2s/1
  # DELETE /jeng2s/1.json
  def destroy
    @jeng2.destroy
    respond_to do |format|
      format.html { redirect_to jeng2s_url, notice: 'Jeng2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jeng2
      @jeng2 = Jeng2.find(params[:id])  
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jeng2_params
      params.require(:jeng2).permit(:name, :age, :parking_number, :phone_number, :number_apartment, :level, :apartment_type)
    end
end
