class User < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :photo, PhotoUploader

  # `Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_voter

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_many :liked_articles
  has_many :messages, dependent: :destroy

  validates :email, presence: true, format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates_length_of :bio, maximum: 300, allow_blank: true
  # def ranking_by_answers
  #   answers.map { |answer| answer.votes_for.count }.sum
  # end

  # def liked_articles
  #   @articles.map { |article| article.votes_for.count }.sum
  # end
end
