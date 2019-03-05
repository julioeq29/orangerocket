class Category < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :tags
  has_many :questions
  has_many :articles
end
