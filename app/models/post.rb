class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { maximum: 275 }
end
