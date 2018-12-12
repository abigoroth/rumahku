 class ChatRoomsController < ApplicationController
  before_action :set_chat_room, only: [:show, :edit, :update, :destroy]

  def show
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  def set_chat_room
    @chat_room = ChatRoom.find(params[:id])
  end 

  

  def destroy
    @chat_room.destroy 
    respond_to do |format|
      format.html { redirect_to chat_rooms_url, notice: 'chat_room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def index
    @chat_rooms = ChatRoom.all
  end 

  def new
    @chat_room = ChatRoom.new
  end

  def create
    if current_user
      @chat_room = current_user.chat_rooms.build(chat_room_params)
    elsif current_admin
      @chat_room = current_admin.chat_rooms.build(chat_room_params)
    elsif current_guard
      @chat_room = current_guard.chat_rooms.build(chat_room_params)
    end

    if @chat_room.save      
      flash[:success] = 'Chat room added!'
      redirect_to chat_rooms_path
    else
      render 'new'
    end
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title)
  end


end
