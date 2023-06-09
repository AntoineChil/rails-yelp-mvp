class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY_FOOD = %w[chinese italian japanese french belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY_FOOD }
end
