class Advert < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :violations
end
