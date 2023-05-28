class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      redirect_to new_room_path
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :user_id, :admin_id)
  end
end
