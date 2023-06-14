class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/i.freeze

  validates :password,
            format: { with: VALID_PASSWORD_REGEX, message: ' is invalid. Include both letters and numbers', allow_blank: true }
  
  validates :class_name_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :children_name, presence: true
  validates :guodian_name, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :class_name
  belongs_to :admin, optional: true
  has_many :rooms
  has_many :messages
  has_many :user_messages
  
end
