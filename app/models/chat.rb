class Chat < ApplicationRecord
  has_many :chatusers
  has_many :messages
  has_many :users, through: :chatusers
end
