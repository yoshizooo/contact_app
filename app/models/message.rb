class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  belongs_to :admin
end
