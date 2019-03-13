class Category < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :tags
  has_many :questions
  has_many :articles

  include PgSearch
  pg_search_scope :global_search,
      against: [ :name ],
      using: {
        tsearch: { prefix: true }
      }
end
