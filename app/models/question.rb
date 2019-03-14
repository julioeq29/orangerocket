class Question < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :answers, dependent: :destroy
  has_many :question_tags
  has_many :tags, through: :question_tags, dependent: :destroy

  validates :content, presence: true
  include PgSearch
  pg_search_scope :question_search,
      against: [ :content ],
      using: {
        tsearch: { prefix: true }
      }
end
