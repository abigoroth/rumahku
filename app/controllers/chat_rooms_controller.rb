 class ChatRoomsController < ApplicationController

  def show
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  
  def _chat_room
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
