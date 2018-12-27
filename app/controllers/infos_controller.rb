class InfosController < ApplicationController
  #before_action -> { authenticate(['admin','user']) } #modifyuser
  before_action :set_info, only: [:show, :edit, :update, :destroy]

  # GET /infos
  # GET /infos.json
  def index
    @infos = User.all 
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
    @info = User.find(params[:id])
    @info = current_user.infos.where(id: params[:id])
  end

  # GET /infos/new
  def new
    @info = User.new
  end

  # GET /infos/1/edit
  def edit
  end
  
  def _member_fields
  end

  def _car_fields
  end


  # POST /infos
  # POST /infos.json
  def create
    @info = User.new(info_params)
    @info.current_user = current_user

    respond_to do |format|
      if @info.save
        format.html { redirect_to infos_path, notice: 'Info was successfully created.' }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PATCH/PUT /infos/1
  # PATCH/PUT /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to infos_path, notice: 'Info was successfully updated.' }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to infos_path, notice: 'Info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
      params.require(:user).permit(:email, :fullname, :IC_number, :age, :races, :occupation, :phonenum, :aptnums, :owner, :emergency_name, :emergency_contact, :house_member, :house_member_name, :house_member_age, :house_member_relationship, :password, :picture, :apartment_id , members_attributes: [:id, :member_name, :member_age, :member_relationship, :_destroy], cars_attributes: [:id, :cartype, :owner, :queue, :platnum, :apartment_id, :_destroy])
      
    end



  end
