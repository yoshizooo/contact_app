class Message < ApplicationRecord
  belongs_to :room
  has_one :user_message, dependent: :destroy
  has_one :admin_message, dependent: :destroy
  has_one_attached :image, ependent: :destroy

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end


end
