class Article < ApplicationRecord
  belongs_to :category
  belongs_to :tag
  has_many :liked_articles
  acts_as_votable

  include PgSearch
  pg_search_scope :article_search,
      against: [ :title],
      using: {
        tsearch: { prefix: true }
      }


end
