class Question < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :answers
end
