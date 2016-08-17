class Review < ApplicationRecord

  RATINGS = [1, 2, 3, 4, 5]

  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATINGS, allow_nil: false }
end
