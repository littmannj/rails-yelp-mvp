class Restaurant < ApplicationRecord

  CATEGORIES = %w(Chinese Italian Japanese French Belgian)

  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true
  has_many :reviews, dependent: :destroy
end
