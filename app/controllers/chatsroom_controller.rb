class ChatsRoomController < ApplicationController
   before_action :require_login
  def show
    @chat_room = ChatRoom.includes(message: :user).find(params[:id])
    @name = chat_rooms.find.(params[:id])
  end
  def new
    @chat_room = ChatRoom.new

  end

end
