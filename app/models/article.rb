class Article < ApplicationRecord
  belongs_to :category
  belongs_to :tag
  has_many :liked_articles
  acts_as_votable
end
