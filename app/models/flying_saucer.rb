class FlyingSaucer < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_one_attached :image

  validates :brand, presence: true
  validates :description, presence: true
  validates :planet, presence: true
  validates :capacity, numericality: { greater_than: 0 }
  validates :price_by_day, numericality: { greater_than: 0 }
end
