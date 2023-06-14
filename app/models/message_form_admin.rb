class MessageFormAdmin
  include ActiveModel::Model
  attr_accessor :content, :room_id, :admin_id

  with_options presence: true do
    validates :content
    validates :admin_id
  end

  def save
    message = Message.create(content: content, room_id: room_id)
    AdminMessage.create(message_id: message.id, admin_id: admin_id)
  end
end