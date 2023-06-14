class MessageFormUser
  include ActiveModel::Model
  attr_accessor :content, :room_id, :user_id

  with_options presence: true do
    validates :content
    validates :user_id
  end

  def save
    message = Message.create(content: content, room_id: room_id)
    UserMessage.create(message_id: message.id, user_id: user_id)
  end
end