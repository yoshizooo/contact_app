class Message < ApplicationRecord
  belongs_to :room
  has_one :user_message, dependent: :destroy
  has_one :admin_message, dependent: :destroy
  has_one_attached :image

  validates :content, presence: true

end
