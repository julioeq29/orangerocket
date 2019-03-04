class Article < ApplicationRecord
  belongs_to :category
  has_many :liked_articles
end
