class Booking < ApplicationRecord
  belongs_to :flying_saucer
  belongs_to :user

  validates :start_booking, presence: true
  validates :end_booking, presence: true
  validates :booking_status, inclusion: { in: %w(pending confirmed cancelled) }
end
