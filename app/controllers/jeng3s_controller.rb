class Jeng3sController < ApplicationController
  before_action :set_jeng3, only: [:show, :edit, :update, :destroy]

  # GET /jeng3s
  # GET /jeng3s.json
  def index
    @jeng3s = Jeng3.all
  end

  # GET /jeng3s/1
  # GET /jeng3s/1.json
  def show
  end

  # GET /jeng3s/new
  def new
    @jeng3 = Jeng3.new
  end

  # GET /jeng3s/1/edit
  def edit
  end

  # POST /jeng3s
  # POST /jeng3s.json
  def create
    @jeng3 = Jeng3.new(jeng3_params)

    respond_to do |format|
      if @jeng3.save
        format.html { redirect_to @jeng3, notice: 'Jeng3 was successfully created.' }
        format.json { render :show, status: :created, location: @jeng3 }
      else
        format.html { render :new }
        format.json { render json: @jeng3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jeng3s/1
  # PATCH/PUT /jeng3s/1.json
  def update
    respond_to do |format|
      if @jeng3.update(jeng3_params)
        format.html { redirect_to @jeng3, notice: 'Jeng3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @jeng3 }
      else
        format.html { render :edit }
        format.json { render json: @jeng3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jeng3s/1
  # DELETE /jeng3s/1.json
  def destroy
    @jeng3.destroy
    respond_to do |format|
      format.html { redirect_to jeng3s_url, notice: 'Jeng3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jeng3
      @jeng3 = Jeng3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jeng3_params
      params.require(:jeng3).permit(:name, :age, :parking_number, :phone_number, :number_apartment, :level, :apartment_type)
    end
end
