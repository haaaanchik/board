class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :adverts
  has_many :favorites
  has_many :violations
  has_many :chatusers
  has_many :messages
  has_many :chats, through: :chatusers
end
