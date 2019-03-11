class Tag < ApplicationRecord
  belongs_to :category
  has_many :question_tags
  has_many :questions, through: :question_tags
end
