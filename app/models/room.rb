class Room < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  belongs_to :admin 
  has_many :messages, dependent: :destroy
end
