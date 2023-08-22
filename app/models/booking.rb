class Booking < ApplicationRecord
  belongs_to :flying_saucer
  belongs_to :user
end
