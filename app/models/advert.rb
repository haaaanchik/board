class Advert < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :favorites
  has_many :violations
end
