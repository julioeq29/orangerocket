class Question < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :answers, dependent: :destroy
  has_many :question_tags
  has_many :tags, through: :question_tags

  validates :content, presence: true
end
