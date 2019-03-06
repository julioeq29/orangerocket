class Answer < ApplicationRecord
  acts_as_votable
  belongs_to :question
  belongs_to :user
end
