class Category < ApplicationRecord
  has_many :tags
  has_many :questions
  has_many :articles
end
