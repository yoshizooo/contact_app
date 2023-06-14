class MessagesController < ApplicationController
  def index
    @message_form_admin = MessageFormAdmin.new
    @message_form_user = MessageFormUser.new
    @room = Room.find(params[:room_id])
    @user = @room.user
    @admin = @room.admin
    @message = @room.messages

  end
  def create
    @room = Room.find(params[:room_id])
    @admin = @room.admin_id
    @user = @room.user_id
    if admin_signed_in?
      @message_form_admin = MessageFormAdmin.new(message_form_admin_params)
      @message_form_admin.valid?
      @message_form_admin.save
      redirect_to room_messages_path(@room)
    elsif user_signed_in?
      @message_form_user = MessageFormUser.new(message_form_user_params)
      @message_form_user.valid?
      @message_form_user.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end

  private
  def message_form_admin_params
    params.require(:message_form_admin).permit(:content, :image).merge(admin_id: @admin, room_id: @room.id)
  end
  def message_form_user_params
    params.require(:message_form_user).permit(:content, :image).merge(user_id: @user, room_id: @room.id)
  end
 
end
